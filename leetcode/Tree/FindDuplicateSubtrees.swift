//
//  FindDuplicateSubtrees.swift
//  leetcode
//
//  Created by FFIB on 2018/1/7.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//652. Find Duplicate Subtrees
/*
 Given a binary tree, return all duplicate subtrees. For each kind of duplicate subtrees, you only need to return the root node of any one of them.
 
 Two trees are duplicate if they have the same structure with same node values.
 
 Example 1:
 1
 / \
 2   3
 /   / \
 4   2   4
 /
 4
 The following are two duplicate subtrees:
 2
 /
 4
 and
 4
 Therefore, you need to return above trees' root in the form of a list.
 */
extension Solution {
    func findDuplicateSubtrees(_ root: TreeNode?) -> [TreeNode?] {
        var dict = [String: Int]()
        var ans = [TreeNode?]()
        func find(root: TreeNode?) -> String {
            guard let node = root else { return "." }
            let s = "\(node.val)\(find(root: node.left))\(find(root: node.right))"
            let v = (dict[s] ?? 0) + 1
            if v == 2 {
                ans.append(node)
            }
            dict[s] = v
            return s
        }
        _ = find(root: root)
        return ans
    }
}

//
//  TwoSumIV-InputisaBST.swift
//  leetcode
//
//  Created by FFIB on 2017/12/17.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//653. Two Sum IV - Input is a BST
/*
 Given a Binary Search Tree and a target number, return true if there exist two elements in the BST such that their sum is equal to the given target.
 
 Example 1:
 Input:
 5
 / \
 3   6
 / \   \
 2   4   7
 
 Target = 9
 
 Output: True
 Example 2:
 Input:
 5
 / \
 3   6
 / \   \
 2   4   7
 
 Target = 28
 
 Output: False
 Seen this question in a real interview before?  YesNo
 */

extension Solution {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        var dict = [Int: Int]()
        func find(tree: TreeNode?) {
            guard let t = tree else { return }
            dict[t.val] = (dict[t.val] ?? 0) + 1
            find(tree: tree?.left)
            find(tree: tree?.right)
        }
        find(tree: root)
        for (key, _) in dict {
            if k == k - key  {
                if (dict[k - key] ?? 0) >= 2 {
                    return true
                }
            }else if dict[k - key] != nil {
                return true
            }
        }
        return false
    }
}

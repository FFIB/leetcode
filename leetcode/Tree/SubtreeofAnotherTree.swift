//
//  SubtreeofAnotherTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//572. Subtree of Another Tree
/*
 Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.
 
 Example 1:
 Given tree s:
 
 3
 / \
 4   5
 / \
 1   2
 Given tree t:
 4
 / \
 1   2
 Return true, because t has the same structure and node values with a subtree of s.
 Example 2:
 Given tree s:
 
 3
 / \
 4   5
 / \
 1   2
 /
 0
 Given tree t:
 4
 / \
 1   2
 Return false.
 */
extension Solution {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        var res = false
        if s != nil && t != nil {
            if s?.val == t?.val{
                res = isSame(s, t)
            }
            if !res {
                res = isSubtree(s?.left, t)
            }
            if !res {
                res = isSubtree(s?.right, t)
            }
        }
        return res
    }
    func isSame(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if s == nil, t == nil {
            return true
        }
        guard let root = s, let tree = t, root.val == tree.val else {
            return false
        }
        return isSameTree(root.left, tree.left) && isSameTree(root.right, tree.right)
    }
}

//
//  SameTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//100. Same Tree
/*
 Given two binary trees, write a function to check if they are the same or not.
 
 Two binary trees are considered the same if they are structurally identical and the nodes have the same value.
 
 
 Example 1:
 
 Input:     1         1
 / \       / \
 2   3     2   3
 
 [1,2,3],   [1,2,3]
 
 Output: true
 Example 2:
 
 Input:     1         1
 /           \
 2             2
 
 [1,2],     [1,null,2]
 
 Output: false
 Example 3:
 
 Input:     1         1
 / \       / \
 2   1     1   2
 
 [1,2,1],   [1,1,2]
 
 Output: false
 */
extension Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }else if ((p == nil && q != nil) || (p != nil && q == nil)){
            return false
        }else {
            if p?.val == q?.val {
                return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
            }else {
                return false
            }
        }
    }
}

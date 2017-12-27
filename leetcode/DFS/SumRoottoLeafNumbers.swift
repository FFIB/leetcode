//
//  SumRoottoLeafNumbers.swift
//  leetcode
//
//  Created by FFIB on 2017/12/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//129. Sum Root to Leaf Numbers
/*
 Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.
 
 An example is the root-to-leaf path 1->2->3 which represents the number 123.
 
 Find the total sum of all root-to-leaf numbers.
 
 For example,
 
 1
 / \
 2   3
 The root-to-leaf path 1->2 represents the number 12.
 The root-to-leaf path 1->3 represents the number 13.
 
 Return the sum = 12 + 13 = 25.
 */
extension Solution {
    func sumNumbers(_ root: TreeNode?) -> Int {
        var ans = 0
        func dfs(tree: TreeNode?, pre: Int) -> Int {
            guard let t = tree else { return 0 }
            let n = pre * 10 + t.val
            if t.left == nil && t.right == nil {
                return n
            }
            return dfs(tree: t.left, pre: n) + dfs(tree: t.right, pre: n)
        }
        return dfs(tree: root, pre: 0)
    }
}

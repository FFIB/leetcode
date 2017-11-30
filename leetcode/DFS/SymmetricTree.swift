//
//  SymmetricTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//101. Symmetric Tree
/*
 Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
 
 For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
 
 1
 / \
 2   2
 / \ / \
 3  4 4  3
 But the following [1,2,2,null,3,null,3] is not:
 1
 / \
 2   2
 \   \
 3    3
 Note:
 Bonus points if you could solve it both recursively and iteratively.
 */
extension Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        var left = [Int]()
        var right = [Int]()
        traverseLeft(root?.left, values: &left)
        traverseRight(root?.right, values: &right)
        return left == right
    }
    
    func traverseLeft(_ root: TreeNode?, values: inout [Int]) {
        guard let tree = root else {
            values.append(0)
            return
        }
        values.append(tree.val)
        traverseLeft(tree.left, values: &values)
        traverseRight(tree.right, values: &values)
    }
    func traverseRight(_ root: TreeNode?, values: inout [Int]) {
        guard let tree = root else {
            values.append(0)
            return
        }
        values.append(tree.val)
        traverseRight(tree.right, values: &values)
        traverseLeft(tree.left, values: &values)
    }
}

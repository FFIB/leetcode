//
//  SymmetricTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class SymmetricTree {
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

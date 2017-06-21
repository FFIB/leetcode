//
//  DiameterofBinaryTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class DiameterofBinaryTree {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var res = 0
        func traverse (tree: TreeNode?) -> Int{
            guard tree != nil else{
                return 0
            }
            let left = traverse(tree: tree?.left)
            let right = traverse(tree: tree?.right)
            res = max(res, left + right)
            return max(left, right) + 1
        }
        let _ = traverse(tree: root)
        return res
    }
}

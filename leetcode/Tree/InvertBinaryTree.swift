//
//  InvertBinaryTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class InvertBinaryTree {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let tree = root else {
            return root
        }
        let temp = tree.left
        tree.left = root?.right
        tree.right = temp
        let _ = invertTree(tree.left)
        let _ = invertTree(tree.right)
        return tree
    }
}

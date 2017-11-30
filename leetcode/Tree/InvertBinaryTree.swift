//
//  InvertBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//226. Invert Binary Tree
/*
 Invert a binary tree.
 
 4
 /   \
 2     7
 / \   / \
 1   3 6   9
 to
 4
 /   \
 7     2
 / \   / \
 9   6 3   1
 Trivia:
 This problem was inspired by this original tweet by Max Howell:
 Google: 90% of our engineers use the software you wrote (Homebrew), but you can’t invert a binary tree on a whiteboard so fuck off.
 */
extension Solution {
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

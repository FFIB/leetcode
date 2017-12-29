//
//  ConstructBinaryTreeFromInorderAndPostorderTraversal.swift
//  leetcode
//
//  Created by FFIB on 2017/12/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//106. Construct Binary Tree from Inorder and Postorder Traversal
/*
 Given inorder and postorder traversal of a tree, construct the binary tree.
 
 Note:
 You may assume that duplicates do not exist in the tree.
 */
extension Solution {
    func buildTree1(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        var dict = [Int: Int]()
        for (i, n) in inorder.enumerated() {
            dict[n] = i
        }
        func build(postStart: Int, postEnd: Int, inStart: Int, inEnd: Int) -> TreeNode? {
            guard inStart <= inEnd && postStart <= postEnd else { return nil }
            
            let root = TreeNode(postorder[postEnd])
            let index = dict[postorder[postEnd]] ?? 0
            
            if index > inStart {
                root.left = build(postStart: postStart, postEnd: postStart + index - inStart - 1, inStart: inStart, inEnd: index - 1)
            }
            if index < inEnd {
                root.right = build(postStart: postStart + index - inStart, postEnd: postEnd - 1, inStart: index + 1, inEnd: inEnd)
            }
            
            return root
        }
        
        return build(postStart: 0, postEnd: postorder.count - 1, inStart: 0, inEnd: inorder.count - 1)
    }
}

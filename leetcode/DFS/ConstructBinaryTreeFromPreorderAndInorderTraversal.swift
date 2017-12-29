//
//  ConstructBinaryTreeFromPreorderAndInorderTraversal.swift
//  leetcode
//
//  Created by FFIB on 2017/12/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//105. Construct Binary Tree from Preorder and Inorder Traversal
/*
 Given preorder and inorder traversal of a tree, construct the binary tree.
 
 Note:
 You may assume that duplicates do not exist in the tree.
 */
extension Solution {
    func buildTree2(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var dict = [Int: Int]()
        for (i, n) in inorder.enumerated() {
            dict[n] = i
        }
        func build(preIndex: Int, start: Int, end: Int) -> TreeNode? {
            guard start <= end else { return nil }
            
            let root = TreeNode(preorder[preIndex])
            let index = dict[preorder[preIndex]] ?? 0
            
            if index > start {
                root.left = build(preIndex: preIndex + 1, start: start, end: index - 1)
            }
            if index < end {
                root.right = build(preIndex: preIndex + index - start + 1, start: index + 1, end: end)
            }
            
            return root
        }
        
        return build(preIndex: 0, start: 0, end: inorder.count - 1)
    }
}

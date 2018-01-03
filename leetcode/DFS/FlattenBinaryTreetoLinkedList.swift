//
//  FlattenBinaryTreetoLinkedList.swift
//  leetcode
//
//  Created by FFIB on 2018/1/3.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//114. Flatten Binary Tree to Linked List
/*
 Given a binary tree, flatten it to a linked list in-place.
 
 For example,
 Given
 
 1
 / \
 2   5
 / \   \
 3   4   6
 The flattened tree should look like:
 1
 \
 2
 \
 3
 \
 4
 \
 5
 \
 6
 click to show hints.
 
 Hints:
 If you notice carefully in the flattened tree, each node's right child points to the next node of a pre-order traversal.
 */
extension Solution {
    func flatten(_ root: TreeNode?) {
        var ans: TreeNode?
        func dfs(_ tree: TreeNode?) {
            guard let t = tree else { return }
            dfs(tree?.right)
            dfs(tree?.left)
            
            t.right = ans
            t.left = nil
            ans = t
        }
        dfs(root)
    }
}

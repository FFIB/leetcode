//
//  DeleteNodeinaBST.swift
//  leetcode
//
//  Created by FFIB on 2017/12/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//450. Delete Node in a BST
/*
 Given a root node reference of a BST and a key, delete the node with the given key in the BST. Return the root node reference (possibly updated) of the BST.
 
 Basically, the deletion can be divided into two stages:
 
 Search for a node to remove.
 If the node is found, delete the node.
 Note: Time complexity should be O(height of tree).
 
 
 Example:
 
 root = [5,3,6,2,4,null,7]
 key = 3
 
 5
 / \
 3   6
 / \   \
 2   4   7
 
 Given key to delete is 3. So we find the node with value 3 and delete it.
 
 One valid answer is [5,4,6,2,null,null,7], shown in the following BST.
 
 5
 / \
 4   6
 /     \
 2       7
 
 Another valid answer is [5,2,6,null,4,null,7].
 
 5
 / \
 2   6
 \   \
 4   7

 */
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
extension Solution {
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        guard let tree = root else { return root }
        if tree.val > key {
            tree.left = deleteNode(tree.left, key)
        }
        else if tree.val < key {
            tree.right = deleteNode(tree.right, key)
        }
        else {
            if tree.left == nil {
                return tree.right
            }else if tree.right == nil {
                return tree.left
            }else {
                var node = root?.left
                while node?.right != nil {
                    node = node?.right
                }
                tree.val = node!.val
                tree.left = deleteNode(tree.left, tree.val)
            }
        }
        return tree
    }
}

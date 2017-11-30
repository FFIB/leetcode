//
//  ConvertBSTtoGreaterTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//538. Convert BST to Greater Tree
/*
 Given a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.
 
 Example:
 
 Input: The root of a Binary Search Tree like this:
 5
 /   \
 2     13
 
 Output: The root of a Greater Tree like this:
 18
 /   \
 20     13
 */
extension Solution  {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        var value = 0
        operation(root, value: &value)
        return root
        
    }
    func operation(_ root: TreeNode?, value: inout Int) {
        guard let tree = root else {
            return
        }
        operation(tree.right, value: &value)
        tree.val += value
        value = tree.val
        operation(tree.left, value: &value)
    }
}

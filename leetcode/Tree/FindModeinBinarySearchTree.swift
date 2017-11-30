//
//  FindModeinBinarySearchTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//501. Find Mode in Binary Search Tree
/*
 Given a binary search tree (BST) with duplicates, find all the mode(s) (the most frequently occurred element) in the given BST.
 
 Assume a BST is defined as follows:
 
 The left subtree of a node contains only nodes with keys less than or equal to the node's key.
 The right subtree of a node contains only nodes with keys greater than or equal to the node's key.
 Both the left and right subtrees must also be binary search trees.
 For example:
 Given BST [1,null,2,2],
 1
 \
 2
 /
 2
 return [2].
 
 Note: If a tree has more than one mode, you can return them in any order.
 
 Follow up: Could you do that without using any extra space? (Assume that the implicit stack space incurred due to recursion does not count).
 */
extension Solution {
    func findMode(_ root: TreeNode?) -> [Int] {
        var dict = [Int: Int]()
        traverse(root, dict: &dict)
        let max = dict.values.max() ?? 0
        var res = [Int]()
        for (key, value) in dict {
            if value == max {
                res.append(key)
            }
        }
        return res
    }
    
    func traverse(_ root: TreeNode?, dict: inout [Int: Int]) {
        guard let tree = root else{
            return
        }
        dict[tree.val] = (dict[tree.val] ?? 0) + 1
        traverse(tree.left, dict: &dict)
        traverse(tree.right, dict: &dict)
    }
}

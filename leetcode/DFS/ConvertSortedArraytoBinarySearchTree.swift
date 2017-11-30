//
//  ConvertSortedArraytoBinarySearchTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//108. Convert Sorted Array to Binary Search Tree
/*
 Given an array where elements are sorted in ascending order, convert it to a height balanced BST.
 */
extension Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.isEmpty  {
            return nil
        }
        return buildTree(nums: nums, start: 0, end: nums.count - 1)
    }
    
    func buildTree(nums: [Int], start: Int, end: Int) -> TreeNode? {
        if start > end {
            return nil
        }
        let node = TreeNode(nums[(start + end) / 2]);
        node.left = buildTree(nums: nums, start: start, end: (start + end) / 2 - 1)
        node.right = buildTree(nums: nums, start: (start + end) / 2 + 1, end: end)
        return node
    }
}

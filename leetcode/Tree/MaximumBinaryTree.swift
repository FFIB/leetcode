//
//  MaximumBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2017/12/17.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//654. Maximum Binary Tree
/*
 Given an integer array with no duplicates. A maximum tree building on this array is defined as follow:
 
 The root is the maximum number in the array.
 The left subtree is the maximum tree constructed from left part subarray divided by the maximum number.
 The right subtree is the maximum tree constructed from right part subarray divided by the maximum number.
 Construct the maximum tree by the given array and output the root node of this tree.
 
 Example 1:
 Input: [3,2,1,6,0,5]
 Output: return the tree root node representing the following tree:
 
 6
 /   \
 3     5
 \    /
 2  0
 \
 1
 Note:
 The size of the given array will be in the range [1,1000].
 */
extension Solution {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        func construct(start: Int, end: Int) -> TreeNode? {
            guard start <= end else { return nil }
            var index = start
            var max = nums[start]
            for i in start...end {
                if nums[i] > max {
                    index = i
                    max = nums[i]
                }
            }
            let node = TreeNode(max)
            node.left = construct(start: start, end: index - 1)
            node.right = construct(start: index + 1, end: end)
            return node
        }
        return construct(start: 0, end: nums.count - 1)
    }
}

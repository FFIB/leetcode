//
//  KthSmallestElementinaBST.swift
//  leetcode
//
//  Created by FFIB on 16/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//230. Kth Smallest Element in a BST
/*
 Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.

 Note:
 You may assume k is always valid, 1 ≤ k ≤ BST's total elements.

 Follow up:
 What if the BST is modified (insert/delete operations) often and you need to find the kth smallest frequently? How would you optimize the kthSmallest routine?
 */
extension Solution {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var tree = root

        var stack = [TreeNode?]()
        while tree != nil {
            stack.append(tree)
            tree = tree?.left
        }

        var num = 1
        while !stack.isEmpty && num <= k {
            tree = stack.removeLast()
            num += 1

            var r = tree?.right
            while r != nil {
                stack.append(r)
                r = r?.left
            }
        }
        return tree?.val ?? 0
    }
}

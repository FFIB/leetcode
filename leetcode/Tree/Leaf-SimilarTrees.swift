//
//  Leaf-SimilarTrees.swift
//  leetcode
//
//  Created by FFIB on 2018/7/23.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//872. Leaf-Similar Trees
/*
 Consider all the leaves of a binary tree.  From left to right order, the values of those leaves form a leaf value sequence.



 For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).

 Two binary trees are considered leaf-similar if their leaf value sequence is the same.

 Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.



 Note:

 Both of the given trees will have between 1 and 100 nodes.
 */
extension Solution {
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {

        func dfs(root: TreeNode?) -> [Int] {
            var stack = [TreeNode?]()
            var nums = [Int]()
            var tree = root

            while tree != nil || !stack.isEmpty {

                while let t = tree {
                    stack.append(t)
                    if t.left == nil && t.right == nil {
                        nums.append(t.val)
                    }
                    tree = t.left
                }

                if !stack.isEmpty {
                    tree = stack.removeLast()
                    tree = tree?.right
                }
            }
            return nums
        }

        return dfs(root: root1) == dfs(root: root2)
    }
}

//
//  UniqueBinarySearchTreesII.swift
//  leetcode
//
//  Created by FFIB on 2017/12/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//95. Unique Binary Search Trees II
/*
 Given an integer n, generate all structurally unique BST's (binary search trees) that store values 1...n.
 
 For example,
 Given n = 3, your program should return all 5 unique BST's shown below.
 
 1         3     3      2      1
 \       /     /      / \      \
  3     2     1      1   3      2
 /     /       \                 \
 2     1         2                 3

 */
extension Solution {
    func generateTrees(_ n: Int) -> [TreeNode?] {
        
        func recursion(min: Int, max: Int) -> [TreeNode?] {
            var ans = [TreeNode?]()
            guard min <= max else{ return [nil] }
            for i in min...max {
                let left = recursion(min: min, max: i - 1)
                let right = recursion(min: i + 1, max: max)
                for l in left {
                    for r in right {
                        let t = TreeNode(i)
                        t.left = l
                        t.right = r
                        ans.append(t)
                    }
                }
            }
            return ans
        }
        
        guard n != 0 else{ return [] }
        return recursion(min: 1, max: n)
    }
}

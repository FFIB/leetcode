//
//  FindLargestValueinEachTreeRow.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//515. Find Largest Value in Each Tree Row
/*
 
 You need to find the largest value in each row of a binary tree.
 
 Example:
 Input:
 
 1
 / \
 3   2
 / \   \
 5   3   9
 
 Output: [1, 3, 9]
 */
extension Solution {
    func largestValues(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        operation(root, depth: 0, maxs: &res)
        return res
    }
    
    func operation(_ root: TreeNode?, depth: Int, maxs: inout [Int]) {
        guard let tree = root else {
            return
        }
        if depth >= maxs.count {
            maxs.append(tree.val)
        }else {
            maxs[depth] = max(maxs[depth], tree.val)
        }
        operation(tree.left, depth: depth + 1, maxs: &maxs)
        operation(tree.right, depth: depth + 1, maxs: &maxs)
    }
}

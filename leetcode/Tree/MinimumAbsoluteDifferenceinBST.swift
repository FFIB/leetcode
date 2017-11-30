//
//  MinimumAbsoluteDifferenceinBST.swift
//  leetcode
//
//  Created by FFIB on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//530. Minimum Absolute Difference in BST
/*
 Given a binary search tree with non-negative values, find the minimum absolute difference between values of any two nodes.
 
 Example:
 
 Input:
 
 1
 \
 3
 /
 2
 
 Output:
 1
 
 Explanation:
 The minimum absolute difference is 1, which is the difference between 2 and 1 (or between 2 and 3).

 */
var res = Int.max
var last = Int.max
extension Solution {
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        guard let tree = root else {
            return Int.max
        }
        let _ = getMinimumDifference(tree.left)
        res = min(res, abs(tree.val - last))
        last = tree.val
        let _ = getMinimumDifference(tree.right)
        return res
    }
}

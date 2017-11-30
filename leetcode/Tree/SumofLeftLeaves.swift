//
//  SumofLeftLeaves.swift
//  leetcode
//
//  Created by FFIB on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//404. Sum of Left Leaves
/*
 Find the sum of all left leaves in a given binary tree.
 
 Example:
 
 3
 / \
 9  20
 /  \
 15   7
 
 There are two left leaves in the binary tree, with values 9 and 15 respectively. Return
 */
extension Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var result = 0
        if root?.left != nil {
            if root?.left?.left == nil && root?.left?.right == nil {
                result += (root?.left?.val)!
            }else{
                result += sumOfLeftLeaves(root?.left)
            }
        }
        result += sumOfLeftLeaves(root?.right)
        return result
    }
}

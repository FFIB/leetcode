//
//  SumofLeftLeaves.swift
//  leetcode
//
//  Created by LISA on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

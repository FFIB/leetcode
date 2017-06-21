//
//  ConvertBSTtoGreaterTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation


extension Solution  {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        var value = 0
        operation(root, value: &value)
        return root
        
    }
    func operation(_ root: TreeNode?, value: inout Int) {
        guard let tree = root else {
            return
        }
        operation(tree.right, value: &value)
        tree.val += value
        value = tree.val
        operation(tree.left, value: &value)
    }
}

//
//  BinaryTreePaths.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class BinaryTreePaths {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var res = [String]()
        var tmp = [String]()
        operation(root, &res, &tmp)
        return res
    }
    
    func operation(_ root: TreeNode?, _ res: inout [String], _ tmp: inout [String]) {
        guard let tree = root else{
            return
        }
        if tree.left == nil && tree.right == nil {
            tmp.append("\(tree.val)")
            res.append(tmp.joined())
            tmp.removeLast()
        }else {
            tmp.append("\(tree.val)->")
            operation(tree.left, &res, &tmp)
            operation(tree.right, &res, &tmp)
            if !tmp.isEmpty {
                tmp.removeLast()
            }
        }
    }
}

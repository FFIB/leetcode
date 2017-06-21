//
//  BinaryTreeTilt.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class BinaryTreeTilt {
    func findTilt(_ root: TreeNode?) -> Int {
        var res = 0
        func subTree(_ root: TreeNode?) -> Int {
            guard let tree = root else {
                return 0
            }
            let lsum = subTree(tree.left)
            let rsum = subTree(tree.right)
            res += abs(lsum - rsum)
            return tree.val + lsum + rsum
        }
        subTree(root)
        return res
    }
}

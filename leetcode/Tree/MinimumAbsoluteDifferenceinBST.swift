//
//  MinimumAbsoluteDifferenceinBST.swift
//  leetcode
//
//  Created by LISA on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation
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

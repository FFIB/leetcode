//
//  MostFrequentSubtreeSum.swift
//  leetcode
//
//  Created by LISA on 2017/7/10.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findFrequentTreeSum(_ root: TreeNode?) -> [Int] {
        var arr = [Int]()
        func operatedTreeSum(_ root: TreeNode?) -> Int {
            guard let tree = root else {
                return 0
            }
            tree.val += operatedTreeSum(tree.left) + operatedTreeSum(tree.right)
            arr.append(tree.val)
            return tree.val
        }
        var res = [Int]()
        var num = 0
        var dict = [Int: Int]()
        
        for n in arr {
            dict[n] = (dict[n] ?? 0) + 1
            if dict[n]! > num{
                num = dict[n]!
                res.removeAll()
                res.append(n)
            }else if dict[n]! == num{
                res.append(n)
            }
        }
        
        return res
    }
    
}

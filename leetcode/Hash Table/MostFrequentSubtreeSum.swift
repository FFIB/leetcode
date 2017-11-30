//
//  MostFrequentSubtreeSum.swift
//  leetcode
//
//  Created by FFIB on 2017/7/10.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//508. Most Frequent Subtree Sum
/*
 Given the root of a tree, you are asked to find the most frequent subtree sum. The subtree sum of a node is defined as the sum of all the node values formed by the subtree rooted at that node (including the node itself). So what is the most frequent subtree sum value? If there is a tie, return all the values with the highest frequency in any order.
 
 Examples 1
 Input:
 
 5
 /  \
 2   -3
 return [2, -3, 4], since all the values happen only once, return all of them in any order.
 Examples 2
 Input:
 
 5
 /  \
 2   -5
 return [2], since 2 happens twice, however -5 only occur once.
 Note: You may assume the sum of values in any subtree is in the range of 32-bit signed integer
 */
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

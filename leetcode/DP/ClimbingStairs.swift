//
//  ClimbingStairs.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//70. Climbing Stairs
/*
 You are climbing a stair case. It takes n steps to reach to the top.
 
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 
 Note: Given n will be a positive integer.
 
 
 Example 1:
 
 Input: 2
 Output:  2
 Explanation:  There are two ways to climb to the top.
 
 1. 1 step + 1 step
 2. 2 steps
 Example 2:
 
 Input: 3
 Output:  3
 Explanation:  There are three ways to climb to the top.
 
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
 */
extension Solution {
    func climbStairs(_ n: Int) -> Int {
        var f1 = 1
        var f2 = 2
        if n == 1 {
            return f1
        }else if n == 2 {
            return f2
        }
        var result = 0
        for _ in 3...n {
            result = f1 + f2
            f1 = f2
            f2 = result
        }
        return result
    }
}

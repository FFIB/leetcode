//
//  JumpGame.swift
//  leetcode
//
//  Created by FFIB on 2017/8/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//55. Jump Game
/*
 Given an array of non-negative integers, you are initially positioned at the first index of the array.
 
 Each element in the array represents your maximum jump length at that position.
 
 Determine if you are able to reach the last index.
 
 For example:
 A = [2,3,1,1,4], return true.
 
 A = [3,2,1,0,4], return false.
 */
extension Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var index = 1
        for i in 0..<nums.count {
            if index < i + 1 {
                break
            }
            index = max(index, i + 1 + nums[i])
        }
        return index >= nums.count
    }
}

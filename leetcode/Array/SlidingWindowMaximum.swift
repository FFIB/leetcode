//
//  SlidingWindowMaximum.swift
//  leetcode
//
//  Created by FFIB on 2017/8/31.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//239. Sliding Window Maximum
/*
 Given an array nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.
 
 For example,
 Given nums = [1,3,-1,-3,5,3,6,7], and k = 3.
 
 Window position                Max
 ---------------               -----
 [1  3  -1] -3  5  3  6  7       3
 1 [3  -1  -3] 5  3  6  7       3
 1  3 [-1  -3  5] 3  6  7       5
 1  3  -1 [-3  5  3] 6  7       5
 1  3  -1  -3 [5  3  6] 7       6
 1  3  -1  -3  5 [3  6  7]      7
 Therefore, return the max sliding window as [3,3,5,5,6,7].
 
 Note:
 You may assume k is always valid, ie: 1 ≤ k ≤ input array's size for non-empty array.
 
 Follow up:
 Could you solve it in linear time?
 */
extension Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        guard !nums.isEmpty && nums.count - k >= 0 else{
            return nums
        }
        var slider = nums[0..<k]
        var maxValue = slider.max()!
        var res = [maxValue]
        var i = k
        while i < nums.count {
            slider.append(nums[i])
            if maxValue == slider.removeFirst() {
                maxValue = slider.max()!
            }else {
                maxValue = max(maxValue, nums[i])
            }
            res.append(maxValue)
            i += 1
        }
        return res
    }
}

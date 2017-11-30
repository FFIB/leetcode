//
//  CanPlaceFlowers.swift
//  leetcode
//
//  Created by FFIB on 2017/7/5.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//605. Can Place Flowers
/*
 Suppose you have a long flowerbed in which some of the plots are planted and some are not. However, flowers cannot be planted in adjacent plots - they would compete for water and both would die.
 
 Given a flowerbed (represented as an array containing 0 and 1, where 0 means empty and 1 means not empty), and a number n, return if n new flowers can be planted in it without violating the no-adjacent-flowers rule.
 
 Example 1:
 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: True
 Example 2:
 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: False
 Note:
 The input array won't violate no-adjacent-flowers rule.
 The input array size is in the range of [1, 20000].
 n is a non-negative integer which won't exceed the input array size.
 */
extension Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        if n == 0 || (n == 1 && flowerbed.count == 1 && flowerbed.first == 0) {
            return true
        }
        var res = n
        var index = 0
        var mutableFlowered = flowerbed
        
        while index < mutableFlowered.count {
            if mutableFlowered[index] == 1 {
                index += 2
            }else {
                if index != 0 && index != mutableFlowered.count - 1 && mutableFlowered[index - 1] == 0 && mutableFlowered[index + 1] == 0 {
                    mutableFlowered[index] = 1
                    res -= 1
                }else if index == 0 && mutableFlowered[index + 1] == 0 {
                    mutableFlowered[index] = 1
                    res -= 1
                }else if index == mutableFlowered.count - 1 && mutableFlowered[index - 1] == 0 {
                    mutableFlowered[index] = 1
                    res -= 1
                }
                index += 1
            }
        }
        return res == 0
    }
}

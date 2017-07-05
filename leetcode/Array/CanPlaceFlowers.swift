//
//  CanPlaceFlowers.swift
//  leetcode
//
//  Created by LISA on 2017/7/5.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

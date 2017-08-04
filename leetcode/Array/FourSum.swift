//
//  FourSum.swift
//  leetcode
//
//  Created by FFIB on 2017/8/4.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
         var res = [[Int]]()
         let sortNums = nums.sorted()
        var tmp = sortNums
        print(tmp)
        for (i, num) in sortNums.enumerated() {
            tmp.removeFirst()
            if i > 0 && sortNums[i] == sortNums[i - 1] {  continue }
            
            for j in 0..<tmp.count {
                if j > 0 && tmp[j] == tmp[j - 1] { continue }
                var left = j + 1
                var right = tmp.count - 1
                while left < right {
                    let current = tmp[left] + tmp[right] + tmp[j] + num
                    if current == target {
                        res.append([tmp[left], tmp[right], tmp[j], num])
                        left += 1
                        right -= 1
                        while left < right && tmp[left] == tmp[left-1] { left += 1 }
                        while left < right && tmp[right] == tmp[right+1] { right -= 1 }
                    }else if current < target {
                        left += 1
                    }else {
                        right -= 1
                    }
                }
            }
        }
        return res
    }
}

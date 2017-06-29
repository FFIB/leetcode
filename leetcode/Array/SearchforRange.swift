//
//  SearchforRange.swift
//  leetcode
//
//  Created by LISA on 2017/6/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var res = [Int]()
        var mid = 0
        while left <= right {
            mid = (left + right) / 2
            if nums[mid] < target {
                left = mid + 1
            }else if nums[mid] > target{
                right = mid - 1
            }else {
                res.append(mid)
                res.append(mid)
                break
            }
        }
        print(mid)
        if nums[mid] == target {
            left = mid - 1
            right = mid + 1
            while left >= 0 && nums[left] == target {
                res[0] = left
                left -= 1
            }
            while right < nums.count && nums[right] == target {
                res[1] = right
                right += 1
            }
            return res
        }else {
            return [-1, -1]
        }
    }
}

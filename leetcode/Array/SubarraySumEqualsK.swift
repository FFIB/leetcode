//
//  SubarraySumEqualsK.swift
//  leetcode
//
//  Created by FFIB on 2017/8/5.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var counts = [Int: Int]()
        var res = 0
        var sum = 0
        for num in nums {
            counts[sum] = (counts[sum] ?? 0) + 1
            sum += num
            res += counts[sum - k] ?? 0
        }
        return res
    }
}

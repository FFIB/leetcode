//
//  RemoveKDigits.swift
//  leetcode
//
//  Created by FFIB on 2017/12/4.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        let maxCount = num.count - k
        let nums = Array(num.utf8).map{ $0.byteSwapped }
        var ans: [UInt8] = Array(repeating: 48, count: nums.count)
        var k = k, top = 0
        for n in nums {
            while k > 0, top > 0 && ans[top - 1] > n {
                top -= 1
                k -= 1
            }
            ans[top] = n
            top += 1
        }
        print(ans)
        var index = 0
        while index < maxCount && ans[index] == 48 {
            index += 1
        }
        return index == maxCount ? "0" : String(bytes: ans[index..<maxCount], encoding: .utf8)!
    }
}

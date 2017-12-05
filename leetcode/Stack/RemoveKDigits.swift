//
//  RemoveKDigits.swift
//  leetcode
//
//  Created by FFIB on 2017/12/4.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//402. Remove K Digits
/*
 Given a non-negative integer num represented as a string, remove k digits from the number so that the new number is the smallest possible.
 
 Note:
 The length of num is less than 10002 and will be ≥ k.
 The given num does not contain any leading zero.
 Example 1:
 
 Input: num = "1432219", k = 3
 Output: "1219"
 Explanation: Remove the three digits 4, 3, and 2 to form the new number 1219 which is the smallest.
 Example 2:
 
 Input: num = "10200", k = 1
 Output: "200"
 Explanation: Remove the leading 1 and the number is 200. Note that the output must not contain leading zeroes.
 Example 3:
 
 Input: num = "10", k = 2
 Output: "0"
 Explanation: Remove all the digits from the number and it is left with nothing which is 0.
 */
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

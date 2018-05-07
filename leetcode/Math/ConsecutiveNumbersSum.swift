//
//  ConsecutiveNumbersSum.swift
//  leetcode
//
//  Created by FFIB on 2018/5/7.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//829. Consecutive Numbers Sum
/*
 Given a positive integer N, how many ways can we write it as a sum of consecutive positive integers?

 Example 1:

 Input: 5
 Output: 2
 Explanation: 5 = 5 = 2 + 3
 Example 2:

 Input: 9
 Output: 3
 Explanation: 9 = 9 = 4 + 5 = 2 + 3 + 4
 Example 3:

 Input: 15
 Output: 4
 Explanation: 15 = 15 = 8 + 7 = 4 + 5 + 6 = 1 + 2 + 3 + 4 + 5
 Note: 1 <= N <= 10 ^ 9.
 */
extension Solution {
    func consecutiveNumbersSum(_ N: Int) -> Int {
        var ans = 0
        var c = 0
        while true {
            c += 1
            if N / c < c / 2 + c % 2 {
                break
            }
            if c % 2 == 1 && N % c == 0 {
                ans += 1
            }else if c % 2 == 0 && (N / c) * c + c / 2 == N {
                ans += 1
            }
        }
        return ans
    }
}

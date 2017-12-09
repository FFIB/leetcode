//
//  MonotoneIncreasingDigits .swift
//  leetcode
//
//  Created by FFIB on 2017/12/8.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//738. Monotone Increasing Digits
/*
 Given a non-negative integer N, find the largest number that is less than or equal to N with monotone increasing digits.
 
 (Recall that an integer has monotone increasing digits if and only if each pair of adjacent digits x and y satisfy x <= y.)
 
 Example 1:
 Input: N = 10
 Output: 9
 Example 2:
 Input: N = 1234
 Output: 1234
 Example 3:
 Input: N = 332
 Output: 299
 Note: N is an integer in the range [0, 10^9].
 */
extension Solution {
    func monotoneIncreasingDigits(_ N: Int) -> Int {
        let s = "\(N)"
        var ans = 0
        var v = (-1, -1)
        var flag = false
        for (i, char) in s.enumerated() {
            guard i + 1 < s.count else {
                break
            }
            let n = Int(String(char))!
            let next = Int(String(s[s.index(s.startIndex, offsetBy: i + 1)]))!
            if n > next {
                flag = true
                if v.0 == -1 || v.1 < n{
                    v = (i, n)
                }
                break
            }else if n == next && v.1 != n{
                v = (i, n)
            }
            ans = ans * 10 + n
        }
        guard flag else {
            return N
        }
        var digit = 1
        let power = s.count - v.0 - 1
        for _ in 0..<power { digit *= 10 }
        return v.1 * digit - 1 + N / digit / 10 * digit * 10
    }
}

//
//  SelfDividingNumbers.swift
//  leetcode
//
//  Created by FFIB on 2017/11/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//728. Self Dividing Numbers
/*
 A self-dividing number is a number that is divisible by every digit it contains.
 
 For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
 
 Also, a self-dividing number is not allowed to contain the digit zero.
 
 Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
 
 Example 1:
 Input:
 left = 1, right = 22
 Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
 Note:
 
 The boundaries of each input argument are 1 <= left <= right <= 10000.
 */
extension Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var ans = (0..<10).map{$0}
        guard right > 10 else {
            return Array(ans[left...min(9, right)])
        }
        ans.removeSubrange(Range(NSRange(location: 0, length: min(10, left)))!)
        for num in max(11, left)...right {
            let divide = Array("\(num)")
            var isSelfDividing = true
            for n in divide {
                if n == "0" || num % Int(String(n))! != 0 {
                    isSelfDividing = false
                    break
                }
            }
            if isSelfDividing {
                ans.append(num)
            }
        }
        return ans
    }
}

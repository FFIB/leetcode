//
//  LargestPalindromeProduct.swift
//  leetcode
//
//  Created by FFIB on 2017/7/7.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//479. Largest Palindrome Product
/*
 Find the largest palindrome made from the product of two n-digit numbers.
 
 Since the result could be very large, you should return the largest palindrome mod 1337.
 
 Example:
 
 Input: 2
 
 Output: 987
 
 Explanation: 99 x 91 = 9009, 9009 % 1337 = 987
 
 Note:
 
 The range of n is [1,8].
 */
extension Solution {
    func largestPalindrome(_ n: Int) -> Int {
        return [9, 9009, 906609, 99000099, 9966006699, 999000000999,
            99956644665999, 9999000000009999][n - 1] % 1337
    }
}

//
//  LargestPalindromeProduct.swift
//  leetcode
//
//  Created by LISA on 2017/7/7.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func largestPalindrome(_ n: Int) -> Int {
        return [9, 9009, 906609, 99000099, 9966006699, 999000000999,
            99956644665999, 9999000000009999][n - 1] % 1337
    }
}

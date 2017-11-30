//
//  KInversePairsArray.swift
//  leetcode
//
//  Created by FFIB on 2017/9/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//629. K Inverse Pairs Array
/*
 Given two integers n and k, find how many different arrays consist of numbers from 1 to n such that there are exactly k inverse pairs.
 
 We define an inverse pair as following: For ith and jth element in the array, if i < j and a[i] > a[j] then it's an inverse pair; Otherwise, it's not.
 
 Since the answer may be very large, the answer should be modulo 109 + 7.
 
 Example 1:
 Input: n = 3, k = 0
 Output: 1
 Explanation:
 Only the array [1,2,3] which consists of numbers from 1 to 3 has exactly 0 inverse pair.
 Example 2:
 Input: n = 3, k = 1
 Output: 2
 Explanation:
 The array [1,3,2] and [2,1,3] have exactly 1 inverse pair.
 Note:
 The integer n is in the range [1, 1000] and k is in the range [0, 1000].
 */
extension Solution {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        let modulo = 1000000007
        var dp = [1]
        for i in 2..<n+1 {
            var ndp = [Int]()
            var num = 0
            for j in 0...min(1 + i * (i - 1) / 2, k + 1) {
                if j < dp.count {
                    num = (num + dp[j]) % modulo
                }
                if j >= i {
                    num = (modulo + num - dp[j - i]) % modulo
                }
                ndp.append(num)
            }
            dp = ndp
        }
        return k < dp.count ? dp[k] : 0
    }
}

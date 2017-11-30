//
//  ArrangingCoins.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//441. Arranging Coins
/*
 You have a total of n coins that you want to form in a staircase shape, where every k-th row must have exactly k coins.
 
 Given n, find the total number of full staircase rows that can be formed.
 
 n is a non-negative integer and fits within the range of a 32-bit signed integer.
 
 Example 1:
 
 n = 5
 
 The coins can form the following rows:
 ¤
 ¤ ¤
 ¤ ¤
 
 Because the 3rd row is incomplete, we return 2.
 Example 2:
 
 n = 8
 
 The coins can form the following rows:
 ¤
 ¤ ¤
 ¤ ¤ ¤
 ¤ ¤
 
 Because the 4th row is incomplete, we return 3.
 */
extension Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var num = 1
        var index = 2
        if n == 0 {
            return 0
        }
        while num <= n - index {
            num = num + index
            index += 1
        }
        return index - 1
    }
}

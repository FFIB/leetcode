//
//  GuessNumberHigherorLowerII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//375. Guess Number Higher or Lower II
/*
 We are playing the Guess Game. The game is as follows:
 
 I pick a number from 1 to n. You have to guess which number I picked.
 
 Every time you guess wrong, I'll tell you whether the number I picked is higher or lower.
 
 However, when you guess a particular number x, and you guess wrong, you pay $x. You win the game when you guess the number I picked.
 
 Example:
 
 n = 10, I pick 8.
 
 First round:  You guess 5, I tell you that it's higher. You pay $5.
 Second round: You guess 7, I tell you that it's higher. You pay $7.
 Third round:  You guess 9, I tell you that it's lower. You pay $9.
 
 Game over. 8 is the number I picked.
 
 You end up paying $5 + $7 + $9 = $21.
 Given a particular n ≥ 1, find out how much money you need to have to guarantee a win.
 
 Credits:
 Special thanks to @agave and @StefanPochmann for adding this problem and creating all test cases.
 */
extension Solution {
    func getMoneyAmount(_ n: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
        for index in 1..<n {
            for i in 1...(n - index) {
                let j = i + index
                var maxNum = Int.max
                for k in i...j {
                    if k == i {
                        maxNum = maxNum < dp[k + 1][j] + k ? maxNum : dp[k + 1][j] + k
                    }else if k == j {
                        maxNum = maxNum < dp[i][j - 1] + k ? maxNum : dp[i][j - 1] + k
                    }else {
                        let val = k + max(dp[i][k - 1], dp[k + 1][j])
                        maxNum = maxNum < val ? maxNum : val
                    }
                }
                dp[i][j] = maxNum
            }
        }
        return dp[1][n]
    }
}

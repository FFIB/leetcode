//
//  CanIWin.swift
//  leetcode
//
//  Created by FFIB on 14/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//464. Can I Win
/*
 In the "100 game," two players take turns adding, to a running total, any integer from 1..10. The player who first causes the running total to reach or exceed 100 wins.

 What if we change the game so that players cannot re-use integers?

 For example, two players might take turns drawing from a common pool of numbers of 1..15 without replacement until they reach a total >= 100.

 Given an integer maxChoosableInteger and another integer desiredTotal, determine if the first player to move can force a win, assuming both players play optimally.

 You can always assume that maxChoosableInteger will not be larger than 20 and desiredTotal will not be larger than 300.

 Example

 Input:
 maxChoosableInteger = 10
 desiredTotal = 11

 Output:
 false

 Explanation:
 No matter which integer the first player choose, the first player will lose.
 The first player can choose an integer from 1 up to 10.
 If the first player choose 1, the second player can only choose integers from 2 up to 10.
 The second player will win by choosing 10 and get a total = 11, which is >= desiredTotal.
 Same with other integers chosen by the first player, the second player will always win.
 */
extension Solution {
    func canIWin(_ maxChoosableInteger: Int, _ desiredTotal: Int) -> Bool {
        if desiredTotal <= maxChoosableInteger { return true }
        if (1+maxChoosableInteger)*maxChoosableInteger/2 < desiredTotal { return false }
        var visited = Array(repeating: false, count: maxChoosableInteger)
        var map = [Int: Bool]()

        func dfs(target: Int) -> Bool {
            let key = (visited.reduce(0) { (res, v) -> Int in
                var next = res << 1
                if v { next |= 1 }
                return next
            })
            if let v = map[key] { return v }
            for (i, v) in visited.enumerated() {
                if !v {
                    visited[i] = true
                    if target <= i + 1 || !dfs(target: target - i - 1) {
                        map[key] = true
                        visited[i] = false
                        return true
                    }
                    visited[i] = false
                }
            }
            map[key] = false
            return false
        }
        return dfs(target: desiredTotal)
    }
}

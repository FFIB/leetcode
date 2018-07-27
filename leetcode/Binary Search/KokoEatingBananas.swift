//
//  KokoEatingBananas.swift
//  leetcode
//
//  Created by FFIB on 2018/7/25.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//875. Koko Eating Bananas
/*
 Koko loves to eat bananas.  There are N piles of bananas, the i-th pile has piles[i] bananas.  The guards have gone and will come back in H hours.

 Koko can decide her bananas-per-hour eating speed of K.  Each hour, she chooses some pile of bananas, and eats K bananas from that pile.  If the pile has less than K bananas, she eats all of them instead, and won't eat any more bananas during this hour.

 Koko likes to eat slowly, but still wants to finish eating all the bananas before the guards come back.

 Return the minimum integer K such that she can eat all the bananas within H hours.



 Example 1:

 Input: piles = [3,6,7,11], H = 8
 Output: 4
 Example 2:

 Input: piles = [30,11,23,4,20], H = 5
 Output: 30
 Example 3:

 Input: piles = [30,11,23,4,20], H = 6
 Output: 23


 Note:

 1 <= piles.length <= 10^4
 piles.length <= H <= 10^9
 1 <= piles[i] <= 10^9
 */
extension Solution {
    func minEatingSpeed(_ piles: [Int], _ H: Int) -> Int {
        guard !piles.isEmpty else {
            return 0
        }
        var l = 1
        var r = piles.max()!
        var ans = r
        while l <= r {
            let m = (l + r) / 2
            var total = 0
            for pile in piles {
                total += pile % m != 0 ? pile / m + 1 : pile / m
            }

            if total > H {
                l = m + 1
            } else {
                r = m - 1
                ans = min(ans, m)
            }
        }
        return ans
    }
}

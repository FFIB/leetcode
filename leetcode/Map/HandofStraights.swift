//
//  HandofStraights.swift
//  leetcode
//
//  Created by FFIB on 2018/6/13.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//846. Hand of Straights
/*
 Alice has a hand of cards, given as an array of integers.

 Now she wants to rearrange the cards into groups so that each group is size W, and consists of W consecutive cards.

 Return true if and only if she can.



 Example 1:

 Input: hand = [1,2,3,6,2,3,4,7,8], W = 3
 Output: true
 Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8].
 Example 2:

 Input: hand = [1,2,3,4,5], W = 4
 Output: false
 Explanation: Alice's hand can't be rearranged into groups of 4.


 Note:

 1 <= hand.length <= 10000
 0 <= hand[i] <= 10^9
 1 <= W <= hand.length
 */
extension Solution {
    func isNStraightHand(_ hand: [Int], _ W: Int) -> Bool {
        guard hand.count % W == 0 else { return false }

        var dict = [Int: Int]()
        for n in hand { dict[n] = (dict[n] ?? 0) + 1 }

        var sortHand = dict.keys.sorted()

        while sortHand.count >= W {
            var tmp = sortHand[0..<W]
            var flag = false
            for (i, n) in tmp.enumerated() {
                if i > 0 {
                    if tmp[i] - 1 != tmp[i - 1] {
                        flag = true
                        break
                    }
                }
                if dict[n] == 1 {
                    sortHand.remove(at: 0)
                    dict.removeValue(forKey: n)
                } else {
                    dict[n]! -= 1
                }
            }

            if flag {
                break
            }
        }

        return dict.isEmpty
    }
}

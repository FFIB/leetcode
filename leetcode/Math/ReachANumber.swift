//
//  ReachANumber.swift
//  leetcode
//
//  Created by FFIB on 2018/1/30.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//754. Reach a Number
/*
 You are standing at position 0 on an infinite number line. There is a goal at position target.

 On each move, you can either go left or right. During the n-th move (starting from 1), you take n steps.

 Return the minimum number of steps required to reach the destination.

 Example 1:
 Input: target = 3
 Output: 2
 Explanation:
 On the first move we step from 0 to 1.
 On the second step we step from 1 to 3.
 Example 2:
 Input: target = 2
 Output: 3
 Explanation:
 On the first move we step from 0 to 1.
 On the second move we step  from 1 to -1.
 On the third move we step from -1 to 2.
 */
extension Solution {
    func reachNumber(_ target: Int) -> Int {
        var sum = 0
        var n = 0
        let target = abs(target)
        while sum < target {
            sum += n
            n += 1
        }
        if (sum - target) % 2 == 0 {
            return n - 1
        }else {
            if n % 2 == 1 { return n }
            else { return n + 1 }
        }
    }
}

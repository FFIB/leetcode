//
//  MirrorReflection.swift
//  leetcode
//
//  Created by FFIB on 2018/7/27.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//858. Mirror Reflection
/*
 There is a special square room with mirrors on each of the four walls.  Except for the southwest corner, there are receptors on each of the remaining corners, numbered 0, 1, and 2.

 The square room has walls of length p, and a laser ray from the southwest corner first meets the east wall at a distance q from the 0th receptor.

 Return the number of the receptor that the ray meets first.  (It is guaranteed that the ray will meet a receptor eventually.)



 Example 1:

 Input: p = 2, q = 1
 Output: 2
 Explanation: The ray meets receptor 2 the first time it gets reflected back to the left wall.



 Note:

 1 <= p <= 1000
 0 <= q <= p
 */
extension Solution {
    func mirrorReflection(_ p: Int, _ q: Int) -> Int {
        func gcd(a: Int, b: Int) -> Int {
            if a == 0 { return b }
            return gcd(a: b % a, b: a)
        }

        let g = gcd(a: a, b: b)
        var p = p / g
        var q = q / g
        p %= 2
        q %= 2

        if p == 1 && q == 1 { return 1 }
        return p == 1 ? 0 : 2
    }
}

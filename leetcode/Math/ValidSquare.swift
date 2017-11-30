//
//  ValidSquare.swift
//  leetcode
//
//  Created by FFIB on 2017/8/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//593. Valid Square
/*
 Given the coordinates of four points in 2D space, return whether the four points could construct a square.
 
 The coordinate (x,y) of a point is represented by an integer array with two integers.
 
 Example:
 Input: p1 = [0,0], p2 = [1,1], p3 = [1,0], p4 = [0,1]
 Output: True
 Note:
 
 All the input integers are in the range [-10000, 10000].
 A valid square has four equal sides with positive length and four equal angles (90-degree angles).
 Input points have no order.
 */
extension Solution {
    func validSquare(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
        var arr = [(p1[0], p1[1]), (p2[0], p2[1]), (p3[0], p3[1]), (p4[0], p4[1])]
        var length = Set<Int>()
        for i in 0..<arr.count {
            for j in i+1..<arr.count {
                let x = abs(arr[i].0 - arr[j].0)
                let y = abs(arr[i].1 - arr[j].1)
                length.insert(x * x + y * y)
            }
        }
        print(length)
        if length.count != 2 {
            return false
        }else {
            let first = length.removeFirst()
            let second = length.removeFirst()
            if first > second {
                return first == second * 2
            }else {
                return second == first * 2
            }
        }
    }
}

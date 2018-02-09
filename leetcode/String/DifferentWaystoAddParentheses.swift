//
//  DifferentWaystoAddParentheses.swift
//  leetcode
//
//  Created by FFIB on 2018/2/8.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//241. Different Ways to Add Parentheses
/*
 Given a string of numbers and operators, return all possible results from computing all the different possible ways to group numbers and operators. The valid operators are +, - and *.


 Example 1
 Input: "2-1-1".

 ((2-1)-1) = 0
 (2-(1-1)) = 2
 Output: [0, 2]


 Example 2
 Input: "2*3-4*5"

 (2*(3-(4*5))) = -34
 ((2*3)-(4*5)) = -14
 ((2*(3-4))*5) = -10
 (2*((3-4)*5)) = -10
 (((2*3)-4)*5) = 10
 Output: [-34, -14, -10, -10, 10]
 */
extension Solution {

    func diffWaysToCompute(_ input: String) -> [Int] {
        if let num = Int(input) { return [num] }

        var ans = [Int]()
        var arr = Array(input)
        for (i, char) in arr.enumerated() {
            print(char)
            if "+-*".contains(char) {
                let left = diffWaysToCompute(String(arr[0..<i]))
                let right = diffWaysToCompute(String(arr[i+1..<input.count]))
                for l in left {
                    for r in right {
                        var v: Int
                        switch char {
                        case "+":
                            v = l + r
                        case "-":
                            v = l - r
                        case "*":
                            v = l * r
                        default:
                            v = 0
                        }
                        ans.append(v)
                    }
                }
            }
        }
        return ans
    }
}

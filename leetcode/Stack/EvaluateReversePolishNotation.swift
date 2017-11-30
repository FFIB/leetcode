//
//  EvaluateReversePolishNotation.swift
//  leetcode
//
//  Created by FFIB on 2017/7/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//150. Evaluate Reverse Polish Notation
/*
 Evaluate the value of an arithmetic expression in Reverse Polish Notation.
 
 Valid operators are +, -, *, /. Each operand may be an integer or another expression.
 
 Some examples:
 ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
 ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6
 */
extension Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var arr = [Int]()
        for token in tokens {
            if ["+", "-", "*", "/"].contains(token) {
                guard arr.count > 1 else{
                    break
                }
                let first = arr.removeLast()
                let second = arr.removeLast()
                switch token {
                case "+":
                    arr.append(first + second)
                    break
                case "*":
                    arr.append(first * second)
                    break
                case "-":
                    arr.append(first - second)
                    break
                case "/":
                    if first * second < 0 {
                        arr.append(-(abs(first) / abs(second)))
                    }else if first * second > 0{
                        arr.append(abs(first) / abs(second))
                    }else {
                        arr.append(0)
                    }
                    break
                default:
                    break
                }
            }else {
                arr.append(Int(token)!)
            }
        }
        return arr.removeLast()
    }
}

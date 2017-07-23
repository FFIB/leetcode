//
//  EvaluateReversePolishNotation.swift
//  leetcode
//
//  Created by LISA on 2017/7/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

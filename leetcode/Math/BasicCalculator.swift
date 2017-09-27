//
//  BasicCalculator.swift
//  leetcode
//
//  Created by FFIB on 2017/9/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func calculate(_ s: String) -> Int {
        let arr = (s+"#").characters.map{String($0)}
        var sign = 1
        var ans = 0
        var num = ""
        var bracket = [Int]()
        var currentBracket = 1
        for element in arr {
            if element == " " {
                continue
            }
            let e = Int(element) ?? -1
            if e >= 0 && e <= 9 {
                num += element
            }else if element == "("{
                bracket.append(sign)
                currentBracket *= sign
                sign = 1
            }else if element == ")" {
                ans += sign * (Int(num) ?? 0) * currentBracket
                num = ""
                sign = 1
                currentBracket *= bracket.removeLast()
            }else {
                ans += sign * (Int(num) ?? 0) * currentBracket
                num = ""
                sign = element == "+" ? 1 : -1
            }
        }
        return ans
    }
}

//
//   SolvetheEquation.swift
//  leetcode
//
//  Created by FFIB on 2017/9/25.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func solveEquation(_ equation: String) -> String {
        func solve(eq: String) -> (Int, Int){
            var n = 0
            var x = 0
            var sign = 1
            var num = ""
            let equationArr = Array((eq+"#").characters.map{String($0)})
            
            for element in equationArr {
                let e = Int(element) ?? -1
                if e >= 0 && e <= 9 {
                    num += element
                }else if element == "x" {
                    x += (Int(num) ?? 1) * sign
                    num = ""
                    sign = 1
                }else {
                    n += (Int(num) ?? 0) * sign
                    num = ""
                    sign = element == "-" ? -1 : 1
                }
            }
            return (x, n)
        }
        let equations = equation.components(separatedBy: "=")
        let lhs = equations.first ?? ""
        let rhs = equations.last ?? ""
        let (leftX, leftNum) = solve(eq: lhs)
        let (rightX, rightNum) = solve(eq: rhs)
        
        let x = leftX - rightX
        let n = rightNum - leftNum
        if x != 0 {
            return "x=\(n / x)"
        }else if n > 0 {
            return "No solution"
        }
        return "Infinite solutions"
    }
}

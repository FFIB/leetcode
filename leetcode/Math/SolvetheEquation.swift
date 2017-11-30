//
//  SolvetheEquation.swift
//  leetcode
//
//  Created by FFIB on 2017/9/25.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//640. Solve the Equation
/*
 Solve a given equation and return the value of x in the form of string "x=#value". The equation contains only '+', '-' operation, the variable x and its coefficient.
 
 If there is no solution for the equation, return "No solution".
 
 If there are infinite solutions for the equation, return "Infinite solutions".
 
 If there is exactly one solution for the equation, we ensure that the value of x is an integer.
 
 Example 1:
 Input: "x+5-3+x=6+x-2"
 Output: "x=2"
 Example 2:
 Input: "x=x"
 Output: "Infinite solutions"
 Example 3:
 Input: "2x=x"
 Output: "x=0"
 Example 4:
 Input: "2x+3x-6x=x+2"
 Output: "x=-1"
 Example 5:
 Input: "x=x+2"
 Output: "No solution"
 */
extension Solution {
    func solveEquation(_ equation: String) -> String {
        func solve(eq: String) -> (Int, Int){
            var n = 0
            var x = 0
            var sign = 1
            var num = ""
            let equationArr = Array((eq+"#").map{String($0)})
            
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

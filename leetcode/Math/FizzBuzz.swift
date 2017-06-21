//
//  FizzBuzz.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        var fizz = 1
        var buzz = 1
        for i in 1...n {
            if (fizz == 3 && buzz == 5){
                result.append("FizzBuzz")
                fizz = 0
                buzz = 0
            }else if (fizz == 3){
                result.append("Fizz")
                fizz = 0
            }else if (buzz == 5){
                result.append("Buzz")
                buzz = 0
            }else {
                result.append("\(i)")
            }
            fizz += 1
            buzz += 1
        }
        return result
    }
}

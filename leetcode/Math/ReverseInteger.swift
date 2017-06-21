//
//  ReverseInteger.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func reverse(_ x: Int) -> Int {
        if x >= 2147483647 || x < -2147483647{
            return 0
        }
        var value = x
        
        var output = 0
        while value != 0 {
            output = output * 10 + value % 10
            value /= 10
            if output >= 2147483647 || output <= -2147483647{
                return 0
            }
            
        }
        return output
        
    }
}

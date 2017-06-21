//
//  BaseSeven.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func convertToBase7(_ num: Int) -> String {
        if num == 0 {
            return "0"
        }
        var result = ""
        var n = abs(num)
        
        while n > 0 {
            let remainder = n % 7
            result = "\(remainder)" + result
            n /= 7
        }
        return num < 0 ? "-" + result : result
    }
}

//
//  CountAndSay.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countAndSay(_ n: Int) -> String {
        var num = n
        var result = "1"
        if n == 1 {
            return result
        }else {
            while num > 1 {
                var last = result[result.startIndex]
                var count = 0
                var temp = ""
                for i in result.characters {
                    if last == i {
                        count += 1
                    }else {
                        temp.append("\(count)" + "\(last)")
                        last = i
                        count = 1
                    }
                }
                temp.append("\(count)" + "\(last)")
                result = temp
                num -= 1
            }
        }
        
        return result
    }
}

//
//  Pascal'sTriangle.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        for i in 0..<numRows {
            var index = 0
            while index <= i {
                if index == 0{
                    result.append([1])
                }else if index >= i {
                    result[i].append(1)
                }else {
                    result[i].append(result[i - 1][index - 1] + result[i - 1][index])
                }
                index += 1
                
            }
        }
        return result
    }
}

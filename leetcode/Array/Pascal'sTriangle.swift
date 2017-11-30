//
//  Pascal'sTriangle.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//118. Pascal's Triangle
/*
 Given numRows, generate the first numRows of Pascal's triangle.
 
 For example, given numRows = 5,
 Return
 
 [
 [1],
 [1,1],
 [1,2,1],
 [1,3,3,1],
 [1,4,6,4,1]
 ]
 */
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

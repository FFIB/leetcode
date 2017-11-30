//
//  Pascal'sTriangleII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//119. Pascal's Triangle II
/*
 Given an index k, return the kth row of the Pascal's triangle.
 
 For example, given k = 3,
 Return [1,3,3,1].
 
 Note:
 Could you optimize your algorithm to use only O(k) extra space?
 */
extension Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var result = [Int]()
        for i in 0...rowIndex {
            var temp = [Int]()
            var index = 0
            while index <= i {
                if index == 0{
                    temp.append(1)
                }else if index >= i {
                    temp.append(1)
                }else {
                    temp.append(result[index - 1] + result[index])
                }
                index += 1
                
            }
            result = temp
        }
        return result
    }
}

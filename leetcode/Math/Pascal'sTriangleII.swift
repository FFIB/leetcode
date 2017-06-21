//
//  Pascal'sTriangleII.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

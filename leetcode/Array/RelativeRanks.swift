//
//  RelativeRanks.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation


extension Solution {
    
    class Number {
        var num = 0
        var index = 0
    }
    
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        var result = [String]()
        var object = [Number]()
        for (index, element) in nums.enumerated() {
            result.append("\(element)")
            let number = Number()
            number.index = index
            number.num = element
            object.append(number)
        }
        object = object.sorted(by: { (first, second) -> Bool in
            return first.num < second.num
        })
        
        for rank in 0..<object.count {
            print(rank)
            print(object[rank].index)
            if rank == nums.count - 1 {
                result[object[rank].index] = ("Gold Medal")
                continue
            }
            if rank == nums.count - 2 {
                result[object[rank].index] = ("Silver Medal")
                continue
            }
            if rank == nums.count - 3 {
                result[object[rank].index] = ("Bronze Medal")
                continue
            }
            result[object[rank].index] = "\(nums.count - rank)"
            
        }
        
        return result
    }
    
}

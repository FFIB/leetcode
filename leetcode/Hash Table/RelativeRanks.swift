//
//  RelativeRanks.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//506. Relative Ranks
/*
 Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".
 
 Example 1:
 Input: [5, 4, 3, 2, 1]
 Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
 Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
 For the left two athletes, you just need to output their relative ranks according to their scores.
 Note:
 N is a positive integer and won't exceed 10,000.
 All the scores of athletes are guaranteed to be unique.
 */
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

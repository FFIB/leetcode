//
//  MinimumTimeDifference.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//539. Minimum Time Difference
/*
 Given a list of 24-hour clock time points in "Hour:Minutes" format, find the minimum minutes difference between any two time points in the list.
 
 Example 1:
 Input: ["23:59","00:00"]
 Output: 1
 Note:
 The number of time points in the given list is at least 2 and won't exceed 20000.
 The input time is legal and ranges from 00:00 to 23:59.
 */
extension Solution {
    func findMinDifference(_ timePoints: [String]) -> Int {
        var result = Int.max
        var times = [Int]()
        for time in timePoints {
            var date = time.components(separatedBy: ":")
            times.append(Int(date[0])! * 60 + Int(date[1])!)
        }
        times.sort()
        times.append(times.first! + 1440)
        for i in 0..<times.count - 1{
            let interval = times[i + 1] - times[i]
            if result > interval {
                result = interval
            }
        }
        return result
    }
}

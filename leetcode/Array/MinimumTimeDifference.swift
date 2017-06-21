//
//  MinimumTimeDifference.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

//
//  FindRightInterval.swift
//  leetcode
//
//  Created by LISA on 2017/6/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

public class Interval {
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

extension Solution {
    func findRightInterval(_ intervals: [Interval]) -> [Int] {
        var res = [Int]()
        for i in 0..<intervals.count {
            var small = Int.max
            var index = Int.max
            for j in 0..<intervals.count {
                if i == j {
                    continue
                }else {
                    if intervals[j].start > intervals[i].end && small > intervals[j].start{
                        small = intervals[j].start
                        index = j
                    }
                }
            }
            if index == Int.max {
                res.append(-1)
            }else {
                res.append(index)
            }
        }
        return res
    }
}

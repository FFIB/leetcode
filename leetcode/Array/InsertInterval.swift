//
//  InsertInterval.swift
//  leetcode
//
//  Created by FFIB on 2017/9/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func insert(_ intervals: [Interval], _ newInterval: Interval) -> [Interval] {
        var res = [Interval]()
        var i = 0
        let tmpInterval = newInterval
        while i < intervals.count && intervals[i].end < newInterval.start{
            res.append(intervals[i])
            i += 1
        }
        while i < intervals.count && intervals[i].start <= newInterval.end {
            tmpInterval.start = min(intervals[i].start, tmpInterval.start)
            tmpInterval.end = min(intervals[i].end, tmpInterval.end)
            i += 1
        }
        res.append(tmpInterval)
        while i < intervals.count {
            res.append(intervals[i])
            i += 1
        }
        return res
    }
}

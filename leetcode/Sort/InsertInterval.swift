//
//  InsertInterval.swift
//  leetcode
//
//  Created by FFIB on 2017/9/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//57. Insert Interval
/*
 Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).
 
 You may assume that the intervals were initially sorted according to their start times.
 
 Example 1:
 Given intervals [1,3],[6,9], insert and merge [2,5] in as [1,5],[6,9].
 
 Example 2:
 Given [1,2],[3,5],[6,7],[8,10],[12,16], insert and merge [4,9] in as [1,2],[3,10],[12,16].
 
 This is because the new interval [4,9] overlaps with [3,5],[6,7],[8,10].
 */
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

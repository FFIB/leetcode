//
//  MergeIntervals.swift
//  leetcode
//
//  Created by FFIB on 2017/11/14.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func merge(_ intervals: [Interval]) -> [Interval] {
        guard !intervals.isEmpty else {
            return []
        }
        let sortedIntervals = intervals.sorted{ $0.start < $1.start }
        var ans = [Interval]()
        var pre = sortedIntervals[0]
        for interval in sortedIntervals {
            if pre.end < interval.start {
                ans.append(Interval(pre.start, pre.end))
                pre = interval
            }else if pre.end >= interval.start {
                pre.end = max(interval.end, pre.end)
            }
        }
        ans.append(pre)
        return ans
    }
}

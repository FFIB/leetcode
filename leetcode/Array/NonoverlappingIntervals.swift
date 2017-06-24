//
//  NonoverlappingIntervals.swift
//  leetcode
//
//  Created by LISA on 2017/6/24.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func eraseOverlapIntervals(_ intervals: [Interval]) -> Int {
        var res = 0
        if intervals.count == 0 {
            return 0
        }
        let sort = intervals.sorted { (interval1, interval2) -> Bool in
            return interval1.end < interval2.end
        }
        var last = sort.first!
        for i in 1..<sort.count {
            if sort[i].start < last.end {
                res += 1
            }else {
                last = sort[i]
            }
        }
        return res
    }
}



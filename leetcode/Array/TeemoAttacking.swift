//
//  TeemoAttacking.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        if timeSeries.count == 0 {
            return 0
        }
        var result = 0
        for i in 1..<timeSeries.count {
            let timeDuration = timeSeries[i] - timeSeries[i - 1]
            result += timeDuration > duration ? duration : timeDuration
        }
        return result + duration
    }
}

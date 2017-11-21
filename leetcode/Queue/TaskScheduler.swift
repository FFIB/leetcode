//
//  TaskScheduler.swift
//  leetcode
//
//  Created by FFIB on 2017/11/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var maxCount = 0
        var taskCount = 1
        
        var taskDict = [Character: Int]()
        for task in tasks {
            taskDict[task] = (taskDict[task] ?? 0) + 1
        }
        
        for (_, value) in taskDict {
            if value == maxCount {
                taskCount += 1
            }else if value > maxCount {
                maxCount = value
                taskCount = 1
            }
        }
        print(taskCount)
        print(maxCount)
        return max(tasks.count, (maxCount - 1) * (n + 1) + taskCount)
    }
}

//
//  MostProfitAssigningWork.swift
//  leetcode
//
//  Created by FFIB on 2018/5/7.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//826. Most Profit Assigning Work
/*
 We have jobs: difficulty[i] is the difficulty of the ith job, and profit[i] is the profit of the ith job.

 Now we have some workers. worker[i] is the ability of the ith worker, which means that this worker can only complete a job with difficulty at most worker[i].

 Every worker can be assigned at most one job, but one job can be completed multiple times.

 For example, if 3 people attempt the same job that pays $1, then the total profit will be $3.  If a worker cannot complete any job, his profit is $0.

 What is the most profit we can make?

 Example 1:

 Input: difficulty = [2,4,6,8,10], profit = [10,20,30,40,50], worker = [4,5,6,7]
 Output: 100
 Explanation: Workers are assigned jobs of difficulty [4,4,6,6] and they get profit of [20,20,30,30] seperately.
 Notes:

 1 <= difficulty.length = profit.length <= 10000
 1 <= worker.length <= 10000
 difficulty[i], profit[i], worker[i]  are in range [1, 10^5]
 */
extension Solution {
    func maxProfitAssignment(_ difficulty: [Int], _ profit: [Int], _ worker: [Int]) -> Int {
        var ans = 0
        var task = [(Int, Int)]()
        for (diff, pro) in zip(difficulty, profit) {
            task.append((diff, pro))
        }
        task.sort{ $0.0 < $1.0 }

        let workers = worker.sorted()
        var i = 0
        var maxPorfit = 0
        for w in workers {
            while i < profit.count && w >= task[i].0 {
                maxPorfit = max(maxPorfit, task[i].1)
                i += 1
            }
            ans += maxPorfit
        }
        
        return ans
    }
}

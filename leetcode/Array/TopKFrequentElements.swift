//
//  TopKFrequentElements.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int : Int]()
        nums.forEach { (num) in
            if dict[num] == nil {
                dict[num] = 1
            }else {
                dict[num] = dict[num]! + 1
            }
        }
        let sortDict = dict.sorted { (dict1 : (key: Int, value: Int), dict2 : (key: Int, value: Int)) -> Bool in
            return dict1.value > dict2.value
        }
        var result = [Int]()
        for i in 0..<sortDict.count {
            if i > k - 1 {
                break
            }
            result.append(sortDict[i].key)
            
        }
        return result
    }
}

//
//  TopKFrequentElements.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//347. Top K Frequent Elements
/*
 Given a non-empty array of integers, return the k most frequent elements.
 
 For example,
 Given [1,1,1,2,2,3] and k = 2, return [1,2].
 
 Note:
 You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
 Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
 */
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

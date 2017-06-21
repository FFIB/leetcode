//
//  K-diffPairsinanArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        if k < 0 {
            return 0
        }
        var result = 0
        var dict = [Int : Int]()
        for i in nums {
            if dict[i] == nil {
                dict[i] = 1
            }else{
                dict[i] = dict[i]! + 1
            }
        }
        
        for key in dict.keys {
            if k == 0 {
                result += dict[key]! >= 2 ? 1 : 0
            }else {
                if dict[key + k] != nil {
                    result += 1
                }
            }
        }
        return result
    }
}

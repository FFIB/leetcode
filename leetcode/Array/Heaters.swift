//
//  Heaters.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        var result = 0
        var j = 0
        var sortHouses = houses.sorted()
        var sortHeaters = heaters.sorted()
        for i in 0..<sortHouses.count {
            while j < sortHeaters.count - 1 && abs(sortHeaters[j] - sortHouses[i]) >= abs(sortHeaters[j + 1] - sortHouses[i])  {
                j += 1
            }
            result = max(result, abs(sortHeaters[j] - sortHouses[i]))
        }
        
        return result
    }
}

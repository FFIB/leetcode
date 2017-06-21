//
//  BestTimetoBuyandSellStock.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        var minPrice = prices[0]
        var result = [Int]()
        var profit = 0
        prices.forEach { (price) in
            if minPrice > price {
                minPrice = price
                result.append(profit)
                profit = 0
            }else {
                profit = price - minPrice > profit ? price - minPrice : profit
            }
        }
        
        result.append(profit)
        return result.max() ?? 0
    }
}

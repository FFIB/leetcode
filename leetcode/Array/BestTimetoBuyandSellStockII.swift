//
//  BestTimetoBuyandSellStockII.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxProfitII(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        var minPrice = prices[0]
        var result = [Int]()
        var profit = 0
        var last = minPrice
        for price in prices {
            if last > price {
                minPrice = price
                result.append(profit)
                profit = 0
            }else {
                profit = price - minPrice > profit ? price - minPrice : profit
            }
            last = price
        }
        result.append(profit)
        return result.reduce(0, +)
    }
}

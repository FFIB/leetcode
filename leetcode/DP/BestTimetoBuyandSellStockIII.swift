//
//  BestTimetoBuyandSellStockIII.swift
//  leetcode
//
//  Created by FFIB on 2017/11/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxProfitIII(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var sell1 = 0, sell2 = 0, buy1 = Int.min, buy2 = Int.min
        for price in prices {
            buy1 = max(buy1, -price)
            sell1 = max(sell1, buy1 + price)
            buy2 = max(buy2, sell1 - price)
            sell2 = max(sell2, buy2 + price)
        }
        return sell2
    }
}

//
//  BestTimetoBuyandSellStockII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//122. Best Time to Buy and Sell Stock II
/*
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
 */
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

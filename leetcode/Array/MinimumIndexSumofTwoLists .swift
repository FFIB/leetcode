\//
//  MinimumIndexSumofTwoLists .swift
//  leetcode
//
//  Created by LISA on 2017/7/3.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var res = [String]()
        var index = list1.count + list2.count
        var dict = [String: Int]()
        for i in 0..<list1.count {
            dict[list1[i]] = i
        }
        for i in 0..<list2.count {
            if let value = dict[list2[i]]{
                if value < index {
                    res.removeAll()
                    index = i + value
                    res.append(list2[i])
                }else if value == index {
                    res.append(list2[i])
                }
                
            }
        }
        return res
    }
}

//
//  MinimumIndexSumofTwoLists .swift
//  leetcode
//
//  Created by FFIB on 2017/7/3.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//599. Minimum Index Sum of Two Lists
/*
 Suppose Andy and Doris want to choose a restaurant for dinner, and they both have a list of favorite restaurants represented by strings.
 
 You need to help them find out their common interest with the least list index sum. If there is a choice tie between answers, output all of them with no order requirement. You could assume there always exists an answer.
 
 Example 1:
 Input:
 ["Shogun", "Tapioca Express", "Burger King", "KFC"]
 ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
 Output: ["Shogun"]
 Explanation: The only restaurant they both like is "Shogun".
 Example 2:
 Input:
 ["Shogun", "Tapioca Express", "Burger King", "KFC"]
 ["KFC", "Shogun", "Burger King"]
 Output: ["Shogun"]
 Explanation: The restaurant they both like and have the least index sum is "Shogun" with index sum 1 (0+1).
 Note:
 The length of both lists will be in the range of [1, 1000].
 The length of strings in both lists will be in the range of [1, 30].
 The index is starting from 0 to the list length minus 1.
 No duplicates in both lists.
 */
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

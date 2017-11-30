//
//  KthLargestElementinanArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//215. Kth Largest Element in an Array
/*
 Find the kth largest element in an unsorted array. Note that it is the kth largest element in the sorted order, not the kth distinct element.
 
 For example,
 Given [3,2,1,5,6,4] and k = 2, return 5.
 
 Note:
 You may assume k is always valid, 1 ≤ k ≤ array's length.
 
 Credits:
 Special thanks to @mithmatt for adding this problem and creating all test cases.
 */
extension Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        return nums.sorted{$0 > $1}[k - 1]
    }
}

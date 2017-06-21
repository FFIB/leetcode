//
//  KthLargestElementinanArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        return nums.sorted{$0 > $1}[k - 1]
    }
}

//
//  RotateArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//189. Rotate Array
/*
 Rotate an array of n elements to the right by k steps.
 
 For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].
 
 Note:
 Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
 
 [show hint]
 
 Related problem: Reverse Words in a String II
 
 Credits:
 Special thanks to @Freezen for adding this problem and creating all test cases.
 */

extension Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var index = 0
        while index < k {
            let last = nums.removeLast()
            nums.insert(last, at: 0)
            index += 1
        }
    }
}

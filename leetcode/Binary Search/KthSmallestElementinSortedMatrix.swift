//
//  KthSmallestElementinSortedMatrix.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//378. Kth Smallest Element in a Sorted Matrix
/*
 Given a n x n matrix where each of the rows and columns are sorted in ascending order, find the kth smallest element in the matrix.
 
 Note that it is the kth smallest element in the sorted order, not the kth distinct element.
 
 Example:
 
 matrix = [
 [ 1,  5,  9],
 [10, 11, 13],
 [12, 13, 15]
 ],
 k = 8,
 
 return 13.
 Note:
 You may assume k is always valid, 1 ≤ k ≤ n2.
 */
extension Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        var synthetic = [Int]()
        for i in matrix {
            synthetic += i
        }
        synthetic.sort()
        for i in 0..<synthetic.count where i == k - 1 {
            return synthetic[i]
        }
        return 0
    }
}

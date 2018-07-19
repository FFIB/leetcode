//
//  AdvantageShuffle.swift
//  leetcode
//
//  Created by FFIB on 2018/7/19.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//870. Advantage Shuffle
/*
 Given two arrays A and B of equal size, the advantage of A with respect to B is the number of indices i for which A[i] > B[i].

 Return any permutation of A that maximizes its advantage with respect to B.



 Example 1:

 Input: A = [2,7,11,15], B = [1,10,4,11]
 Output: [2,11,7,15]
 Example 2:

 Input: A = [12,24,8,32], B = [13,25,32,11]
 Output: [24,32,8,12]


 Note:

 1 <= A.length = B.length <= 10000
 0 <= A[i] <= 10^9
 0 <= B[i] <= 10^9
 */
extension Solution {
    func advantageCount(_ A: [Int], _ B: [Int]) -> [Int] {
        var sortedA = A.sorted(by: >)
        let sortedB = B.enumerated().lazy.sorted{ $0.element > $1.element }

        var indexA = 0
        var indexB = 0
        var ans = Array(repeating: 0, count: A.count)

        while indexA < sortedA.count && indexB < sortedB.count {
            while indexB < sortedB.count && sortedA[indexA] <= sortedB[indexB].element {
                ans[sortedB[indexB].offset] = sortedA.removeLast()
                indexB += 1
            }
            guard indexA < sortedA.count && indexB < sortedB.count else { break }

            ans[sortedB[indexB].offset] = sortedA[indexA]
            indexA += 1
            indexB += 1
        }

        return ans
    }
}

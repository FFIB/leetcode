//
//  SelfDividingNumbers.swift
//  leetcode
//
//  Created by FFIB on 2017/11/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var ans = (0..<10).map{$0}
        guard right > 10 else {
            return Array(ans[left...min(9, right)])
        }
        ans.removeSubrange(Range(NSRange(location: 0, length: min(10, left)))!)
        for num in max(11, left)...right {
            let divide = Array("\(num)".characters)
            var isSelfDividing = true
            for n in divide {
                if n == "0" || num % Int(String(n))! != 0 {
                    isSelfDividing = false
                    break
                }
            }
            if isSelfDividing {
                ans.append(num)
            }
        }
        return ans
    }
}

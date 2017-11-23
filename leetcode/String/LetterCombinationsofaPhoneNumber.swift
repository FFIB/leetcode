//
//  LetterCombinationsofaPhoneNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let arr = ["0", "1", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
        var res = [String]()
        for digit in digits {
            let count = res.count == 0 ? 1 : res.count
            for _ in 0..<count {
                let head = res.isEmpty ? "" : res.removeFirst()
                for alpha in arr[Int(String(digit))!]{
                    res.append(head + String(alpha))
                }
            }
        }
        return res
    }
}

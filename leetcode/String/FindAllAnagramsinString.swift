//
//  FindAllAnagramsinString.swift
//  leetcode
//
//  Created by LISA on 2017/7/4.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        if s.characters.count < p.characters.count {
            return []
        }
        var dict = [Character: Int]()
        for str in p.characters {
            dict[str] = (dict[str] ?? 0) + 1
        }
        var res = [Int]()
        var arr = Array(s.characters)
        var left = 0
        var right = 0
        var tmp = dict
        while right < arr.count {
            let str = arr[right]
            if tmp[str] != nil {
                if tmp[str] == 0 {
                    left += 1
                    right = left
                    tmp = dict
                }else {
                    tmp[str] = tmp[str]! - 1
                    right += 1
                }
            }else {
                left = right + 1
                right = left
                tmp = dict
            }
            
            if right - left == p.characters.count {
                res.append(left)
                left += 1
                right = left
                tmp = dict
            }
        }
        return res
    }
}

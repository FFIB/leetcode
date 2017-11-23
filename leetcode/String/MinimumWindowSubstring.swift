//
//  MinimumWindowSubstring.swift
//  leetcode
//
//  Created by FFIB on 2017/9/10.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        let s_arr = Array(s.utf16.map{ Int($0) })
        let t_arr = Array(t.utf16.map{ Int($0) })
        var t_dict = [Int](repeating: 0, count: 255)
        for i in t_arr {
            t_dict[i] += 1
        }
        var start = 0, left = 0, right = 0, length = s_arr.count + 1, count = t_arr.count
        while right < s_arr.count {
            if t_dict[s_arr[right]] > 0 {
                count -= 1
            }
            t_dict[s_arr[right]] -= 1
            right += 1
            print(count)
            while count == 0 {
                if right - left <= length {
                    length = right - left
                    start = left
                }
                if t_dict[s_arr[left]] == 0 {
                    count += 1
                }
                t_dict[s_arr[left]] += 1
                left += 1
            }
        }
        guard length != s_arr.count + 1 else {
            return ""
        }
        return String(Array(s)[start..<start+length])
    }
}

//
//  RemoveDuplicateLetters.swift
//  leetcode
//
//  Created by FFIB on 2017/12/4.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func removeDuplicateLetters(_ s: String) -> String {
        var dict = [String: Int]()
        var stack = [String]()
        var ans = Set<String>()
        for char in s {
            dict[String(char)] = (dict[String(char)] ?? 0) + 1
        }
        for char in s {
            let w = String(char)
            dict[w]! -= 1
            if ans.contains(w) {
                continue
            }
            while let top = stack.last, top > w, dict[top]! > 0 {
                ans.remove(stack.removeLast())
            }
            stack.append(w)
            ans.insert(w)
        }
        return stack.joined()
    }
}

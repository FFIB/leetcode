//
//  ValidParentheses.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isValid(_ s: String) -> Bool {
        var arr = [Character]()
        let foreParentheses = "{[("
        let backParentheses = "}])"
        let dict = ["[": "]", "{": "}", "(": ")"] as [Character: Character]
        for i in s.characters {
            if foreParentheses.contains(String(i)) {
                arr.append(i)
            }
            if backParentheses.contains(String(i)) {
                if arr.isEmpty || dict[arr.removeLast()] != i {
                    return false
                }
            }
        }
        return arr.isEmpty
    }
}

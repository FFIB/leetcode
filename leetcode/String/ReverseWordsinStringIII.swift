//
//  ReverseWordsinStringIII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func reverseWords(_ s: String) -> String {
        let sArr = s.components(separatedBy: .whitespaces)
        var res = sArr.reduce("") { (res, str) -> String in
            return res + String(str.reversed()) + " "
        }
        res.removeLast()
        return res
    }
}

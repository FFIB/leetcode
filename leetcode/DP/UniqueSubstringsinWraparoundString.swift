//
//  UniqueSubstringsinWraparoundString.swift
//  leetcode
//
//  Created by FFIB on 2017/11/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findSubstringInWraproundString(_ p: String) -> Int {
        var len = 0
        var alphabet = Array(repeating: 0, count: 26)
        let chars = Array(p.characters)
        var dp = [Int]()
        for (i, char) in chars.enumerated() {
            guard let ascii = UnicodeScalar(String(char))?.value else{
                continue
            }
            let value = Int(ascii) - 97
            if i > 0 && (value - dp.last! == 1 || dp.last! - value == 25) {
               len += 1
            }else {
                len = 1
            }
            alphabet[value] = max(len, alphabet[value])
            dp.append(value)
        }
        return alphabet.reduce(0, +)
    }
}

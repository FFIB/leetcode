//
//  ValidPalindrome.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isPalindrome(_ s: String) -> Bool {
        let cleanStr = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "")
        return cleanStr.lowercased() == String(cleanStr.reversed()).lowercased()
    }
}

//
//  DetectCapital.swift
//  leetcode
//
//  Created by LISA on 2017/7/4.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var arr = Array(word.unicodeScalars)
        if arr.count < 2 {
            return false
        }
        let isCapital = (arr.first?.value)! >= 65 && (arr.first?.value)! <= 90
        let isAllCapital = arr[1].value >= 65 && arr[1].value <= 90
        for i in 1..<arr.count {
            if isCapital {
                if isAllCapital {
                    guard arr[i].value >= 65 && arr[i].value <= 90 else {
                        return false
                    }
                }else {
                    guard arr[i].value >= 97 && arr[i].value <= 122 else{
                        return false
                    }
                }
            }else {
                guard arr[i].value >= 97 && arr[i].value <= 122 else{
                    return false
                }
            }
        }
        return true
    }
}

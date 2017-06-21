//
//  ValidNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isNumber(_ s: String) -> Bool {
        var arr = Array(s.characters)
        var index = 0
        for ch in arr {
            guard ch == " " else{
                break
            }
            arr.remove(at: index)
        }
        index = arr.count - 1
        while index > 0  {
            guard arr[index] == " " else{
                break
            }
            arr.remove(at: index)
            index -= 1
        }
        if Double(String(arr)) != nil {
            return true
        }
        if arr.first == "+" || arr.first == "-" {
            arr.removeFirst()
        }
        var eCount = 0
        var commaCount = 0
        var hasE = false
        for i in 0..<arr.count {
            if arr[i] == "e" && eCount == 0 {
                eCount = 1
                hasE = true
                if i == 0 || i == arr.count - 1 {
                    return false
                }
                if arr[i - 1] == "." {
                    guard i > 1 else{
                        return false
                    }
                }
            }else if arr[i] == "." && commaCount == 0{
                commaCount = 1
                if arr.first == arr.last && arr.first == "."{
                    return false
                }
                if hasE {
                    return false
                }
            }else if arr[i] == "+" || arr[i] == "-"{
                guard i != 0 && i != arr.count - 1 && arr[i - 1] == "e" else{
                    return false
                }
            }else {
                guard Int(String(arr[i])) != nil else{
                    return false
                }
            }
        }
        return !arr.isEmpty
    }
}

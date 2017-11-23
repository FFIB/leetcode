//
//  LengthofLastWord.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var arr = s.components(separatedBy: " ")
        while (arr.last?.isEmpty)! && arr.count != 1 {
            arr.remove(at: arr.count - 1)
        }
        return (arr.last?.count)!
    }
}

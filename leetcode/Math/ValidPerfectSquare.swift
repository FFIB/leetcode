//
//  ValidPerfectSquare.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        let sqrtNum =  Int(sqrt(Double(num)))
        return num == sqrtNum * sqrtNum
    }
}

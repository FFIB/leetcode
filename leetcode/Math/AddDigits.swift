//
//  AddDigits.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func addDigits(_ num: Int) -> Int {
        return 1 + (num - 1) % 9
    }
}

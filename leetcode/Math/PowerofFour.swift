//
//  PowerofFour.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isPowerOfFour(_ num: Int) -> Bool {
        return num > 0 && (num - 1) & num == 0 && num & 0x55555555 != 0
    }
}

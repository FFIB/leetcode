//
//  PowerofThree.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        return n > 0 && (1162261467 % n == 0)
    }
}

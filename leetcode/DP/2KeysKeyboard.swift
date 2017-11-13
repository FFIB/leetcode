//
//  2KeysKeyboard.swift
//  leetcode
//
//  Created by FFIB on 2017/11/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func minSteps(_ n: Int) -> Int {
        guard n > 1 else {
            return 0
        }
        for i in 2..<n {
            if n % i == 0 {
                return i + minSteps(n / i)
            }
        }
        return n
    }
}

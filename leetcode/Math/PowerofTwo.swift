//
//  PowerofTwo.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n > 0 && !(n&(n-1) > 0)
    }
}

//
//  1-bitand2-bitCharacters.swift
//  leetcode
//
//  Created by FFIB on 2017/11/17.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        var index = 0
        while index < bits.count {
            index += bits[index] + 1
        }
        return index == bits.count - 1
    }
}

//
//  NumberofSegmentsinString.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countSegments(_ s: String) -> Int {
        if s.isEmpty {
            return 0
        }
        var isContinuous = false
        var result = 0
        for i in s.characters {
            if i == " " {
                result = isContinuous ? result + 1 : result
                isContinuous = false
            }else {
                isContinuous = true
            }
        }
        return isContinuous ? result + 1 : result
    }
}

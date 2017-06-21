//
//  StudentAttendanceRecordI.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func checkRecord(_ s: String) -> Bool {
        var lateCount = 0
        var absent = false
        for str in s.characters {
            if str == "A" {
                if absent {
                    return false
                }
                absent = true
            }
            if str == "L" {
                lateCount += 1
                if lateCount > 2 {
                    return false
                }
            }else {
                lateCount = 0
            }
        }
        return true
    }
}

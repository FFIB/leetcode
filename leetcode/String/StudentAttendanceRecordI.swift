//
//  StudentAttendanceRecordI.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//551. Student Attendance Record I
/*
 You are given a string representing an attendance record for a student. The record only contains the following three characters:
 
 'A' : Absent.
 'L' : Late.
 'P' : Present.
 A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).
 
 You need to return whether the student could be rewarded according to his attendance record.
 
 Example 1:
 Input: "PPALLP"
 Output: True
 Example 2:
 Input: "PPALLL"
 Output: False
 */
extension Solution {
    func checkRecord(_ s: String) -> Bool {
        var lateCount = 0
        var absent = false
        for str in s {
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

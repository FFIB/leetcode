//
//  NumberofSegmentsinString.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//434. Number of Segments in a String
/*
 Count the number of segments in a string, where a segment is defined to be a contiguous sequence of non-space characters.
 
 Please note that the string does not contain any non-printable characters.
 
 Example:
 
 Input: "Hello, my name is John"
 Output: 5
 */
extension Solution {
    func countSegments(_ s: String) -> Int {
        if s.isEmpty {
            return 0
        }
        var isContinuous = false
        var result = 0
        for i in s {
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

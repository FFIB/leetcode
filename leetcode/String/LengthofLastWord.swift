//
//  LengthofLastWord.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//58. Length of Last Word
/*
 Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
 
 If the last word does not exist, return 0.
 
 Note: A word is defined as a character sequence consists of non-space characters only.
 
 Example:
 
 Input: "Hello World"
 Output: 5
 */
extension Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var arr = s.components(separatedBy: " ")
        while (arr.last?.isEmpty)! && arr.count != 1 {
            arr.remove(at: arr.count - 1)
        }
        return (arr.last?.count)!
    }
}

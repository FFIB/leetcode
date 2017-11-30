//
//  ValidPalindrome.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//125. Valid Palindrome
/*
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 For example,
 "A man, a plan, a canal: Panama" is a palindrome.
 "race a car" is not a palindrome.
 
 Note:
 Have you consider that the string might be empty? This is a good question to ask during an interview.
 
 For the purpose of this problem, we define empty string as valid palindrome.
 */
extension Solution {
    func isPalindrome(_ s: String) -> Bool {
        let cleanStr = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "")
        return cleanStr.lowercased() == String(cleanStr.reversed()).lowercased()
    }
}

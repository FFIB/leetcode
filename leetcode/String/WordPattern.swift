//
//  WordPattern.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        var first = ""
        var second = ""
        var dict = [String : Int]()
        var index = 0
        for i in pattern.characters {
            if dict[String(i)] == nil {
                dict[String(i)] = index
                first += "\(index)"
                index += 1
            }else {
                first += "\(dict[String(i)]!)"
            }
        }
        dict = [String : Int]()
        index = 0
        var separatedStr = ""
        for i in str.characters {
            if String(i) != " "{
                separatedStr += String(i)
            }else {
                if dict[separatedStr] == nil {
                    dict[separatedStr] = index
                    second += "\(index)"
                    index += 1
                }else {
                    second += "\(dict[separatedStr]!)"
                }
                separatedStr = ""
            }
        }
        if dict[separatedStr] == nil {
            dict[separatedStr] = index
            second += "\(index)"
            index += 1
        }else {
            second += "\(dict[separatedStr]!)"
        }
        separatedStr = ""
        return first == second
    }
}

//
//  AddBinary.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var res = ""
        var c = 0
        var i = a.count - 1
        var j = b.count - 1
        var arri = Array<Character>(a)
        var arrj = Array<Character>(b)
        while i >= 0 || j >= 0 || c == 1 {
            if i >= 0 {
                c += Int(String(arri[i])) ?? 0
                i -= 1
            }
            if j >= 0 {
                c += Int(String(arrj[j])) ?? 0
                j -= 1
            }
            res = "\(c % 2)" + res
            c /= 2
        }
        return res
    }
}

//
//  LicenseKeyFormatting.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        var res = ""
        let str = S.characters.filter{$0 != "-"}
        var index = str.count - K
        while index > 0 {
            res =  "-" + String(str[index..<(index + K)]).uppercased() + res
            index -= K
        }
        res = String(str[0..<(index + K)]).uppercased() + res
        return res
    }
}

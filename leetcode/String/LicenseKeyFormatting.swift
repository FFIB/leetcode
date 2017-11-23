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
        let str = S.filter{$0 != "-"}
        var index = str.count - K
        while index > 0 {
            
            res =  "-" + str[str.index(str.startIndex, offsetBy: index)..<str.index(str.startIndex, offsetBy: index + K)].uppercased() + res
            index -= K
        }
        res = str[str.startIndex..<str.index(str.startIndex, offsetBy: index + K)].uppercased() + res
        return res
    }
}

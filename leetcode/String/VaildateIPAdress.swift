//
//  VaildateIPAdress.swift
//  leetcode
//
//  Created by FFIB on 2017/8/11.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func validIPAddress(_ IP: String) -> String {
        func isIPv4() -> Bool{
            let ipv4 = IP.components(separatedBy: ".")
            guard ipv4.count == 4 else {
                return false
            }
            for str in ipv4 {
                if (Int(String(str) ?? "256") ?? 256) > 255 || (str.hasPrefix("0") && str.characters.count != 1) {
                    return false
                }else {
                    for char in str.characters where Int(String(char)) != nil {
                        return false
                    }
                }
            }
            return true
        }
        func isIPv6() -> Bool {
            let hexadecimal = "0123456789abcdefABCDEF"
            let ipv6 = IP.components(separatedBy: ":")
            guard ipv6.count == 8 else {
                return false
            }
            for str in ipv6 {
                if str.characters.count > 4 || str.characters.count == 0 || UInt(str, radix: 16) == nil {
                    return false
                }else {
                    for char in str.characters where !hexadecimal.contains(String(char)) {
                        return false
                    }
                }
            }
            return true
        }
        if isIPv4() {
            return "IPv4"
        }else if isIPv6() {
            return "IPv6"
        }else {
            return "Neither"
        }
    }
}

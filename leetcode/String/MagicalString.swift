//
//  MagicalString.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution  {
    func magicalString(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        var magical = ["1", "2", "2"]
        var p = 2
        while magical.count < n {
            let add = magical.last! == "1" ? "2" : "1"
            if magical[p] == "1" {
                magical.append(add)
            }else {
                magical.append(add)
                magical.append(add)
            }
            p += 1
        }
        if magical.count > n {
            magical.removeLast()
        }
        return magical.reduce(0, { (res, str) -> Int in
            return str == "1" ? res + 1 : res
        })
    }
}

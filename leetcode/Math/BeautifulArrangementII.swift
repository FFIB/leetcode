//
//  BeautifulArrangementII.swift
//  leetcode
//
//  Created by FFIB on 2017/9/7.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func constructArray(_ n: Int, _ k: Int) -> [Int] {
        var res = [1]
        for i in 0..<k {
            let num = (res.last ?? 0) + [1, -1][i % 2] * (k - i)
            res.append(num)
        }
        return res + (k + 2..<n + 1)
    }
}

//
//  LongestAbsoulteFilePath.swift
//  leetcode
//
//  Created by LISA on 2017/7/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func lengthLongestPath(_ input: String) -> Int {
        var res = 0
        var pathLength = [Int: Int]()
        for filepath in input.components(separatedBy: "\n") {
            let path = filepath.replacingOccurrences(of: "\t", with: "")
            let depth = filepath.characters.count - path.characters.count
            if path.range(of: ".") != nil {
                res = max(res, (pathLength[depth] ?? 0) + path.characters.count)
            }else {
                pathLength[depth + 1] = (pathLength[depth] ?? 0) + path.characters.count + 1
            }
        }
        return res
    }
}

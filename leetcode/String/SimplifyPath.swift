//
//  SimplifyPath.swift
//  leetcode
//
//  Created by FFIB on 2017/9/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func simplifyPath(_ path: String) -> String {
        let names = path.components(separatedBy: "/")
        var ans = [String]()
        for name in names {
            if name == ".." {
                if !ans.isEmpty {
                    ans.removeLast()
                }
                continue
            }else if name.isEmpty {
                continue
            }else if name == "." {
                continue
            }else {
                ans.append(name)
            }
        }
        return "/" + ans.joined(separator: "/")
    }
}

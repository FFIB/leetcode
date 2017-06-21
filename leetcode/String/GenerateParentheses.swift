//
//  GenerateParentheses.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var res = [String]()
        addParenthesis(res: &res, str: "", n: n, m: 0);
        return res
    }
    
    func addParenthesis( res: inout [String], str: String, n: Int, m: Int) {
        if n == 0 && m == 0 {
            res.append(str)
            return
        }
        if n > 0 {
            addParenthesis(res: &res, str: str + "(", n: n - 1, m: m + 1)
        }
        if m > 0 {
            addParenthesis(res: &res, str: str + ")", n: n, m: m - 1)
        }
    }
}

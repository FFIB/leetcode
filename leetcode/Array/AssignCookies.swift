//
//  AssignCookies.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var result = 0
        var childrens = g.sorted()
        var cookies = s.sorted()
        var cookiesCount = cookies.count - 1
        var childrensCount = childrens.count - 1
        
        while min(childrensCount, cookiesCount) >= 0 {
            if cookies[cookiesCount] >= childrens[childrensCount]{
                result += 1
                childrensCount -= 1
                cookiesCount -= 1
            }else {
                childrensCount -= 1
            }
            
        }
        return result
    }
}

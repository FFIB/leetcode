//
//  QueueReconstructionbyHeight.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        var res = [[Int]]()
        let sortP = people.sorted { (p1, p2) -> Bool in
            if p1[0] != p2[0] {
                return p1[0] > p2[0]
            }else {
                return p1[1] < p2[1]
            }
        }
        for p in sortP {
            if res.isEmpty {
                res.append(p)
            }else {
                if p[1] >= res.count {
                    res.append(p)
                }else {
                    res.insert(p, at: p[1])
                }
            }
            
        }
        return res
    }
}

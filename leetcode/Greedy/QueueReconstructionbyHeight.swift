//
//  QueueReconstructionbyHeight.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//406. Queue Reconstruction by Height
/*
 Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.
 
 Note: You may not slant the container and n is at least 2.
 */
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

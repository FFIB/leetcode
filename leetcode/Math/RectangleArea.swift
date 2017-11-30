//
//  RectangleArea.swift
//  leetcode
//
//  Created by FFIB on 2017/8/15.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//223. Rectangle Area
/*
 Find the total area covered by two rectilinear rectangles in a 2D plane.
 
 Each rectangle is defined by its bottom left corner and top right corner as shown in the figure.
 
 Rectangle Area
 Assume that the total area is never beyond the maximum possible value of int.
 
 Credits:
 Special thanks to @mithmatt for adding this problem, creating the above image and all test cases.
 */
extension Solution {
    func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        let area1 = (C - A) * (D - B)
        let area2 = (G - E) * (H - F)
        let h = min(C, G) - max(E, A)
        let v = min(D, H) - max(F, B)
        var area3 = h * v
        if h <= 0 || v <= 0 {
            area3 = 0
        }
        return area1 + area2 - area3
    }
}

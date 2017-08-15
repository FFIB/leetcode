//
//  RectangleArea.swift
//  leetcode
//
//  Created by FFIB on 2017/8/15.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

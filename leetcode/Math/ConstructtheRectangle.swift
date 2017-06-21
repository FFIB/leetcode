//
//  ConstructtheRectangle.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var width = Int(sqrt(Double(area)))
        while area % width != 0 {
            width -= 1
        }
        return [area / width, width]
        
    }
}

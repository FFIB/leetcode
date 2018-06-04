//
//  RectangleOverlap.swift
//  leetcode
//
//  Created by FFIB on 2018/6/1.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//836. Rectangle Overlap
/*
 A rectangle is represented as a list [x1, y1, x2, y2], where (x1, y1) are the coordinates of its bottom-left corner, and (x2, y2) are the coordinates of its top-right corner.

 Two rectangles overlap if the area of their intersection is positive.  To be clear, two rectangles that only touch at the corner or edges do not overlap.

 Given two (axis-aligned) rectangles, return whether they overlap.

 Example 1:

 Input: rec1 = [0,0,2,2], rec2 = [1,1,3,3]
 Output: true
 Example 2:

 Input: rec1 = [0,0,1,1], rec2 = [1,0,2,1]
 Output: false
 Notes:

 Both rectangles rec1 and rec2 are lists of 4 integers.
 All coordinates in rectangles will be between -10^9 and 10^9.
 */
extension Solution {
    func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
        let (rec1X1, rec1Y1, rec1X2, rec1Y2) = (rec1[0], rec1[1], rec1[2], rec1[3])
        let (rec2X1, rec2Y1, rec2X2, rec2Y2) = (rec2[0], rec2[1], rec2[2], rec2[3])
        return !(rec1X1 >= rec2X2 || rec1Y1 >= rec2Y2
            || rec1X2 >= rec2X1 || rec1Y2 <= rec1Y1)
    }
}

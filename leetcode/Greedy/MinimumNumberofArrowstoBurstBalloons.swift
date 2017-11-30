//
//  MinimumNumberofArrowstoBurstBalloons.swift
//  leetcode
//
//  Created by FFIB on 2017/11/30.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//452. Minimum Number of Arrows to Burst Balloons
/*
 There are a number of spherical balloons spread in two-dimensional space. For each balloon, provided input is the start and end coordinates of the horizontal diameter. Since it's horizontal, y-coordinates don't matter and hence the x-coordinates of start and end of the diameter suffice. Start is always smaller than end. There will be at most 104 balloons.
 
 An arrow can be shot up exactly vertically from different points along the x-axis. A balloon with xstart and xend bursts by an arrow shot at x if xstart ≤ x ≤ xend. There is no limit to the number of arrows that can be shot. An arrow once shot keeps travelling up infinitely. The problem is to find the minimum number of arrows that must be shot to burst all balloons.
 
 Example:
 
 Input:
 [[10,16], [2,8], [1,6], [7,12]]
 
 Output:
 2
 
 Explanation:
 One way is to shoot one arrow for example at x = 6 (bursting the balloons [2,8] and [1,6]) and another arrow at x = 11 (bursting the other two balloons).
 */
extension Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        guard !points.isEmpty else { return 0 }
        let sortPoints = points.sorted { (point1, point2) -> Bool in
            if point1[0] == point2[0] {
                return point1[1] < point2[1]
            }
            return point1[0] < point2[0]
        }
        var ans = 1
        var arrowLimit = points[0][1]
        for point in sortPoints {
            if point[0] <= arrowLimit {
                arrowLimit = min(point[1], arrowLimit)
            }else {
                ans += 1
                arrowLimit = point[1]
            }
        }
        return ans
    }
}

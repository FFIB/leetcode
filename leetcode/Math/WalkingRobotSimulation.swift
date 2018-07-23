//
//  WalkingRobotSimulation.swift
//  leetcode
//
//  Created by FFIB on 2018/7/23.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//874. Walking Robot Simulation
/*
 A robot on an infinite grid starts at point (0, 0) and faces north.  The robot can receive one of three possible types of commands:

 -2: turn left 90 degrees
 -1: turn right 90 degrees
 1 <= x <= 9: move forward x units
 Some of the grid squares are obstacles.

 The i-th obstacle is at grid point (obstacles[i][0], obstacles[i][1])

 If the robot would try to move onto them, the robot stays on the previous grid square instead (but still continues following the rest of the route.)

 Return the square of the maximum Euclidean distance that the robot will be from the origin.



 Example 1:

 Input: commands = [4,-1,3], obstacles = []
 Output: 25
 Explanation: robot will go to (3, 4)
 Example 2:

 Input: commands = [4,-1,4,-2,4], obstacles = [[2,4]]
 Output: 65
 Explanation: robot will be stuck at (1, 4) before turning left and going to (1, 8)


 Note:

 0 <= commands.length <= 10000
 0 <= obstacles.length <= 10000
 -30000 <= obstacle[i][0] <= 30000
 -30000 <= obstacle[i][1] <= 30000
 The answer is guaranteed to be less than 2 ^ 31.
 */
extension Solution {
    func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
        var direction = 0
        var x = 0
        var y = 0
        var dx = [0, 1, 0, -1]
        var dy = [1, 0, -1, 0]
        var ans = 0
        var obstacleSet = Set<Int>()
        for obstacle in obstacles {
            obstacleSet.insert(((obstacle[0] + 30000) << 16) + obstacle[1] + 30000)
        }

        for command in commands {
            if command == -1 {
                direction = direction == 3 ? 0 : direction + 1
                continue
            } else if command == -2 {
                direction = direction == 0 ? 3 : direction - 1
                continue
            } else {
                for _ in 0..<command {
                    let nx = x + dx[direction]
                    let ny = y + dy[direction]
                    let key = ((nx + 30000) << 16) + ny + 30000
                    if !obstacleSet.contains(key) {
                        x = nx
                        y = ny
                    }
                }
                ans = max(ans, x * x + y * y)
            }
        }
        return ans
    }
}

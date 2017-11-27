
//
//  AsteroidCollision.swift
//  leetcode
//
//  Created by FFIB on 2017/11/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for asteroid in asteroids {
            while let top = stack.last, top > 0, asteroid < 0, top < abs(asteroid) {
                stack.removeLast()
            }
            if stack.isEmpty || stack.last! < 0 || asteroid > 0 {
                stack.append(asteroid)
            }else if asteroid < 0, abs(asteroid) == stack.last! {
                stack.removeLast()
            }
        }
        return stack
    }
}

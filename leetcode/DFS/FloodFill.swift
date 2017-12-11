//
//  FloodFill.swift
//  leetcode
//
//  Created by FFIB on 2017/12/11.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//733. Flood Fill
/*
 An image is represented by a 2-D array of integers, each integer representing the pixel value of the image (from 0 to 65535).
 
 Given a coordinate (sr, sc) representing the starting pixel (row and column) of the flood fill, and a pixel value newColor, "flood fill" the image.
 
 To perform a "flood fill", consider the starting pixel, plus any pixels connected 4-directionally to the starting pixel of the same color as the starting pixel, plus any pixels connected 4-directionally to those pixels (also with the same color as the starting pixel), and so on. Replace the color of all of the aforementioned pixels with the newColor.
 
 At the end, return the modified image.
 
 Example 1:
 Input:
 image = [[1,1,1],[1,1,0],[1,0,1]]
 sr = 1, sc = 1, newColor = 2
 Output: [[2,2,2],[2,2,0],[2,0,1]]
 Explanation:
 From the center of the image (with position (sr, sc) = (1, 1)), all pixels connected
 by a path of the same color as the starting pixel are colored with the new color.
 Note the bottom corner is not colored 2, because it is not 4-directionally connected
 to the starting pixel.
 Note:
 
 The length of image and image[0] will be in the range [1, 50].
 The given starting pixel will satisfy 0 <= sr < image.length and 0 <= sc < image[0].length.
 The value of each color in image[i][j] and newColor will be an integer in [0, 65535].
 */

//BFS
//extension Solution {
//    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
//        var queue = [(sr, sc)]
//        let color = image[sr][sc]
//        let dxs = [1, -1, 0, 0]
//        let dys = [0, 0, 1, -1]
//        var ans = image
//        ans[sr][sc] = newColor
//        while !queue.isEmpty {
//            let (x, y) = queue.removeLast()
//            for (dx, dy) in zip(dxs, dys) {
//                let targetX = dx + x
//                let targetY = dy + y
//                guard targetX >= 0, targetX < image.count,
//                    targetY >= 0, targetY < image[targetX].count else {
//                    continue
//                }
//                if color == image[targetX][targetY], ans[targetX][targetY] != newColor {
//                    ans[targetX][targetY] = newColor
//                    queue.append((targetX, targetY))
//                }
//            }
//        }
//        return ans
//    }
//}

//DFS
extension Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        let dxs = [1, -1, 0, 0]
        let dys = [0, 0, 1, -1]
        let originColor = image[sr][sc]
        func floodFillWithDFS(image: inout [[Int]], x: Int, y: Int) {
            guard image[x][y] == originColor else {
                return
            }
            image[x][y] = newColor
            for (dx, dy) in zip(dxs, dys) {
                let targetX = dx + x
                let targetY = dy + y
                guard targetX >= 0, targetX < image.count,
                    targetY >= 0, targetY < image[targetX].count else {
                    continue
                }
                floodFillWithDFS(image: &image, x: targetX, y: targetY)
            }
        }
        guard image[sr][sc] != newColor else {
            return image
        }
        var ans = image
        floodFillWithDFS(image: &ans, x: sr, y: sc)
        return ans
    }
}


//
//  FriendCircles.swift
//  leetcode
//
//  Created by FFIB on 2018/1/21.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//547. Friend Circles
/*
 There are N students in a class. Some of them are friends, while some are not. Their friendship is transitive in nature. For example, if A is a direct friend of B, and B is a direct friend of C, then A is an indirect friend of C. And we defined a friend circle is a group of students who are direct or indirect friends.
 
 Given a N*N matrix M representing the friend relationship between students in the class. If M[i][j] = 1, then the ith and jth students are direct friends with each other, otherwise not. And you have to output the total number of friend circles among all the students.
 
 Example 1:
 Input:
 [[1,1,0],
 [1,1,0],
 [0,0,1]]
 Output: 2
 Explanation:The 0th and 1st students are direct friends, so they are in a friend circle.
 The 2nd student himself is in a friend circle. So return 2.
 Example 2:
 Input:
 [[1,1,0],
 [1,1,1],
 [0,1,1]]
 Output: 1
 Explanation:The 0th and 1st students are direct friends, the 1st and 2nd students are direct friends,
 so the 0th and 2nd students are indirect friends. All of them are in the same friend circle, so return 1.
 Note:
 N is in range [1,200].
 M[i][i] = 1 for all students.
 If M[i][j] = 1, then M[j][i] = 1.
 */
extension Solution {
    func findCircleNum(_ M: [[Int]]) -> Int {
        guard !M.isEmpty || !M[0].isEmpty else { return 0 }
        
        var ans = 0
        var visited = Array(repeating: 0, count: M[0].count)
        
        func dfs(k: Int) {
            visited[k] = 1
            for i in 0..<M.count {
                if M[k][i] == 0 || visited[i] == 1 { continue }
                dfs(k: i)
            }
        }
        
        for i in 0..<M.count {
            if visited[i] == 1 { continue }
            dfs(k: i)
            ans += 1
        }
        return ans
    }
}

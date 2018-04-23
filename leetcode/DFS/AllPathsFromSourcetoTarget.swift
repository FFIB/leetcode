//
//  AllPathsFromSourcetoTarget.swift
//  leetcode
//
//  Created by FFIB on 2018/4/23.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//797. All Paths From Source to Target
/*
 Given a directed, acyclic graph of N nodes.  Find all possible paths from node 0 to node N-1, and return them in any order.

 The graph is given as follows:  the nodes are 0, 1, ..., graph.length - 1.  graph[i] is a list of all nodes j for which the edge (i, j) exists.

 Example:
 Input: [[1,2], [3], [3], []]
 Output: [[0,1,3],[0,2,3]]
 Explanation: The graph looks like this:
 0--->1
 |    |
 v    v
 2--->3
 There are two paths: 0 -> 1 -> 3 and 0 -> 2 -> 3.
 Note:

 The number of nodes in the graph will be in the range [2, 15].
 You can print different paths in any order, but you should keep the order of nodes inside one path.
 */
extension Solution {
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        var ans = [[Int]]()
        
        func dfs(list: [Int], path: [Int]) {
            for p in list {
                var new = path
                new.append(p)
                if p == graph.count - 1 {
                    ans.append(new)
                }else {
                    dfs(list: graph[p], path: new)
                }

            }
        }
        dfs(list: graph[0], path: [0])
        return ans
    }
}

//
//  LongestUnivaluePath.swift
//  leetcode
//
//  Created by FFIB on 2017/12/19.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//687. Longest Univalue Path
/*
 Given a binary tree, find the length of the longest path where each node in the path has the same value. This path may or may not pass through the root.
 
 Note: The length of path between two nodes is represented by the number of edges between them.
 
 Example 1:
 
 Input:
 
 5
 / \
 4   5
 / \   \
 1   1   5
 Output:
 
 2
 Example 2:
 
 Input:
 
 1
 / \
 4   5
 / \   \
 4   4   5
 Output:
 
 2
 Note: The given binary tree has not more than 10000 nodes. The height of the tree is not more than 1000.
 */

extension Solution {
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        var ans = 0
        func longestPath(_ root: TreeNode?) -> Int {
            guard let tree = root else { return 0 }
            let lc = longestPath(tree.left)
            let rc = longestPath(tree.right)
            var ll = 0, rl = 0
            if let left = tree.left, left.val == tree.val { ll = lc + 1 }
            if let right = tree.right, right.val == tree.val { rl = rc + 1 }
            ans = max(rl + ll, ans)
            return max(rl, ll)
        }
        let _ = longestPath(root)
        return ans
    }
}

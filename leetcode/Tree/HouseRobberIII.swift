//
//  HouseRobberIII.swift
//  leetcode
//
//  Created by FFIB on 2017/12/24.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//337. House Robber III
/*
 The thief has found himself a new place for his thievery again. There is only one entrance to this area, called the "root." Besides the root, each house has one and only one parent house. After a tour, the smart thief realized that "all houses in this place forms a binary tree". It will automatically contact the police if two directly-linked houses were broken into on the same night.
 
 Determine the maximum amount of money the thief can rob tonight without alerting the police.
 
 Example 1:
 3
 / \
 2   3
 \   \
 3   1
 Maximum amount of money the thief can rob = 3 + 3 + 1 = 7.
 Example 2:
 3
 / \
 4   5
 / \   \
 1   3   1
 Maximum amount of money the thief can rob = 4 + 5 = 9.
 */
extension Solution {
    func rob(_ root: TreeNode?) -> Int {
        func dfs(tree: TreeNode?) -> (Int, Int) {
            guard let t = tree else { return (0, 0) }
            let left = dfs(tree: t.left)
            let right = dfs(tree: t.right)
            let rob = max(left.0, left.1) + max(right.0, right.1)
            let noRob = t.val + left.1 + right.1
            return (rob, noRob)
        }
        let ans = dfs(tree: root)
        return max(ans.0, ans.1)
    }
}

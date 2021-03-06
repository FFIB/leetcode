//
//  BinaryTreeRightSideView.swift
//  leetcode
//
//  Created by 郑剑飞 on 2018/1/1.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//199. Binary Tree Right Side View
/*
 Given a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.
 
 For example:
 Given the following binary tree,
    1            <---
  /   \
 2     3         <---
  \     \
   5     4       <---
 You should return [1, 3, 4].
 */
extension Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let tree = root else { return [] }
        
        var ans = [Int]()
        var stack = [(0, tree)]
        var flag = 0
        
        while !stack.isEmpty {
            let t = stack.removeLast()
            if t.0 == flag {
                ans.append(t.1.val)
                flag = t.0 + 1
            }
            if let l = t.1.left {
                stack.append((t.0 + 1, l))
            }
            if let r = t.1.right {
                stack.append((t.0 + 1, r))
            }
        }
        return ans
    }
}

//
//  BinaryTreePaths.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//257. Binary Tree Paths
/*
 Given a binary tree, return all root-to-leaf paths.
 
 For example, given the following binary tree:
 
 1
 /   \
 2     3
 \
 5
 All root-to-leaf paths are:
 
 ["1->2->5", "1->3"]
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var res = [String]()
        var tmp = [String]()
        operation(root, &res, &tmp)
        return res
    }
    
    func operation(_ root: TreeNode?, _ res: inout [String], _ tmp: inout [String]) {
        guard let tree = root else{
            return
        }
        if tree.left == nil && tree.right == nil {
            tmp.append("\(tree.val)")
            res.append(tmp.joined())
            tmp.removeLast()
        }else {
            tmp.append("\(tree.val)->")
            operation(tree.left, &res, &tmp)
            operation(tree.right, &res, &tmp)
            if !tmp.isEmpty {
                tmp.removeLast()
            }
        }
    }
}

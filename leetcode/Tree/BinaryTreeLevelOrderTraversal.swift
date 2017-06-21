//
//  BinaryTreeLevelOrderTraversal.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class BinaryTreeLevelOrderTraversal  {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        levelOperation(res: &res, root: root, level: 0)
        return res
    }
    func levelOperation(res: inout [[Int]], root: TreeNode?, level: Int) {
        guard let tree = root else{
            return
        }
        if level >= res.count {
            res.append([])
        }
        res[level].append(tree.val)
        levelOperation(res: &res, root: tree.left, level: level + 1);
        levelOperation(res: &res, root: tree.right, level: level + 1);
        
        
    }
}

//
//  PrintBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2018/1/8.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation
//655. Print Binary Tree
/*
 Print a binary tree in an m*n 2D string array following these rules:
 
 The row number m should be equal to the height of the given binary tree.
 The column number n should always be an odd number.
 The root node's value (in string format) should be put in the exactly middle of the first row it can be put. The column and the row where the root node belongs will separate the rest space into two parts (left-bottom part and right-bottom part). You should print the left subtree in the left-bottom part and print the right subtree in the right-bottom part. The left-bottom part and the right-bottom part should have the same size. Even if one subtree is none while the other is not, you don't need to print anything for the none subtree but still need to leave the space as large as that for the other subtree. However, if two subtrees are none, then you don't need to leave space for both of them.
 Each unused space should contain an empty string "".
 Print the subtrees following the same rules.
 Example 1:
 Input:
   1
  /
 2
 Output:
 [["", "1", ""],
 ["2", "", ""]]
 Example 2:
 Input:
  1
  / \
 2   3
  \
   4
 Output:
 [["", "", "", "1", "", "", ""],
 ["", "2", "", "", "", "3", ""],
 ["", "", "4", "", "", "", ""]]
 Example 3:
 Input:
       1
      / \
     2   5
    /
   3
  /
 4
 Output:
 
 [["",  "",  "", "",  "", "", "", "1", "",  "",  "",  "",  "", "", ""]
 ["",  "",  "", "2", "", "", "", "",  "",  "",  "",  "5", "", "", ""]
 ["",  "3", "", "",  "", "", "", "",  "",  "",  "",  "",  "", "", ""]
 ["4", "",  "", "",  "", "", "", "",  "",  "",  "",  "",  "", "", ""]]
 */
extension Solution {
    func printTree(_ root: TreeNode?) -> [[String]] {

        func findDepth(root: TreeNode?) -> Int {
            guard let node = root else { return 0 }
            return 1 + max(findDepth(root: node.left), findDepth(root: node.right))
        }
        
        
        guard let root = root else { return [] }
        
        let height = findDepth(root: root)
        var width = (1 << height) - 1
        var ans = Array(repeating: Array(repeating: "", count: width), count: height)
        
        
        func transform(root: TreeNode?, level: Int, l: Int, r: Int) {
            guard let node = root else { return }
            let mid = l + (r - l) / 2
            ans[level][mid] = "\(node.val)"
            transform(root: node.left, level: level, l: l, r: mid - 1)
            transform(root: node.right, level: level, l: mid + 1, r: r)
        }
        
        
        transform(root: root, level: 0, l: 0, r: width - 1)
        
        return ans
    }
}

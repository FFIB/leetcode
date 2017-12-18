//
//  TrimaBinarySearchTree.swift
//  leetcode
//
//  Created by FFIB on 2017/12/17.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//669. Trim a Binary Search Tree
/*
 Given a binary search tree and the lowest and highest boundaries as L and R, trim the tree so that all its elements lies in [L, R] (R >= L). You might need to change the root of the tree, so the result should return the new root of the trimmed binary search tree.
 
 Example 1:
 Input:
  1
 / \
 0  2
 
 L = 1
 R = 2
 
 Output:
 1
  \
   2
 Example 2:
 Input:
    3
   / \
  0    4
   \
    2
   /
  1
 
 L = 1
 R = 3
 
 Output:
        3
      /
    2
  /
 1
 Seen this question in a real interview before?
 */

extension Solution {
    func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
        guard let tree = root else { return nil }
        if tree.val < L {
            return trimBST(tree.right, L, R)
        }else if tree.val > R{
            return trimBST(tree.left, L, R)
        }
        tree.left = trimBST(tree.left, L, R)
        tree.right = trimBST(tree.right, L, R)
        return tree
    }
}

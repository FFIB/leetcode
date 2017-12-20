//
//  ConstructStringfromBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2017/12/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//606. Construct String from Binary Tree
/*
 You need to construct a string consists of parenthesis and integers from a binary tree with the preorder traversing way.
 
 The null node needs to be represented by empty parenthesis pair "()". And you need to omit all the empty parenthesis pairs that don't affect the one-to-one mapping relationship between the string and the original binary tree.
 
 Example 1:
 Input: Binary tree: [1,2,3,4]
 1
 /   \
 2     3
 /
 4
 
 Output: "1(2(4))(3)"
 
 Explanation: Originallay it needs to be "1(2(4)())(3()())",
 but you need to omit all the unnecessary empty parenthesis pairs.
 And it will be "1(2(4))(3)".
 Example 2:
 Input: Binary tree: [1,2,3,null,4]
 1
 /   \
 2     3
 \
 4
 
 Output: "1(2()(4))(3)"
 
 Explanation: Almost the same as the first example,
 except we can't omit the first parenthesis pair to break the one-to-one mapping relationship between the input
 */

extension Solution {
    func tree2str(_ t: TreeNode?) -> String {
        guard let tree = t else { return "" }
        if tree.left == nil && tree.right == nil { return "\(tree.val)" }
        else if tree.left == nil { return "\(tree.val)" + "()" + "(\(tree2str(tree.right))" }
        else if tree.right == nil { return "\(tree.val)" + "(\(tree2str(tree.left))" + "()" }
        else { return "\(tree.val)" + "(\(tree2str(tree.left))" + "(\(tree2str(tree.right))" }
    }
}

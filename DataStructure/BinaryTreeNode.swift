//
//  BinaryTreeNode.swift
//  leetcode
//
//  Created by FFIB on 2017/12/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//Binary Tree
public class BinaryTreeNode {
    public var val: Int
    public var left: BinaryTreeNode?
    public var right: BinaryTreeNode?
    public init(_ val: Int) {
        self.val = val
    }
    
    //calculate the binary tree depth
    func maxDepth(root: BinaryTreeNode?) -> Int {
        guard root != nil else {
            return 0
        }
        return max(maxDepth(root:root?.left), maxDepth(root: root?.right))
    }
    
    func preOrderTraversal(root: BinaryTreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [BinaryTreeNode]()
        var node = root
        while !stack.isEmpty || node != nil {
            while node != nil {
                res.append(node!.val)
                stack.append(node!)
                node = node?.left
            }
            if !stack.isEmpty {
                node = stack.removeLast().right
            }
        }
        return res
    }
    
    func midOrderTraversal(root: BinaryTreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [BinaryTreeNode]()
        var node = root
        while !stack.isEmpty || node != nil {
            while node != nil {
                stack.append(node!)
                node = node?.left
            }
            if !stack.isEmpty {
                let top = stack.removeLast()
                res.append(top.val)
                node = top.right
            }
        }
        return res
    }
    
    func postOrderTraversal(root: BinaryTreeNode?) -> [Int] {
        guard root != nil else {
            return []
        }
        var ans = [Int]()
        var stack = [BinaryTreeNode]()
        var output = [BinaryTreeNode]()
        stack.append(root!)
        while !stack.isEmpty {
            let current = stack.removeLast()
            output.append(current)
            if let left = current.left {
                stack.append(left)
            }
            if let right = current.right {
                stack.append(right)
            }
        }
        while output.isEmpty {
            let current = output.removeLast()
            ans.append(current.val)
        }
        return ans
    }
    
    func levelOrderTraversal(root: BinaryTreeNode?) -> [[Int]] {
        var res = [[Int]]()
        var queue = [BinaryTreeNode]()
        
        if let root = root {
            queue.append(root)
        }
        while queue.count > 0 {
            let count = queue.count
            var level = [Int]()
            for _ in 0..<count {
                let node = queue.removeFirst()
                level.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            res.append(level)
        }
        return res
    }
}

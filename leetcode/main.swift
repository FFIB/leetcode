//
//  main.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class Solution { }

//MARK: ListNode
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        var d = "["
        var list: ListNode? = self
        while list != nil {
            if list?.next == nil {
                d.append("\(list!.val)]")
            }else {
                d.append("\(list!.val), ")
            }
            
            list = list?.next
        }
        return d
    }
}

extension ListNode: Equatable {
    public static func ==(lhs: ListNode, rhs: ListNode) -> Bool {
        var l: ListNode? = lhs
        var r: ListNode? = rhs
        while l != nil, r != nil, l?.val == r?.val {
            l = l?.next
            r = r?.next
        }
        return l == nil && r == nil
    }
}

//MARK: Interval
public class Interval {
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

extension Interval: CustomStringConvertible {
    public var description: String {
        return "start:\(start) end:\(end)"
    }
}

//MARK: TreeNode
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


//
//  main.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class Solution {
    
}

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

let date = Date()
print(type(of: date))

struct TestOptions: OptionSet {
    let rawValue: Int
    static let none = TestOptions(rawValue: 0)
    static let option1 = TestOptions(rawValue: 1)
}


//
//  MiniParser.swift
//  leetcode
//
//  Created by FFIB on 2017/12/7.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//385. Mini Parser
/*
 Given a nested list of integers represented as a string, implement a parser to deserialize it.
 
 Each element is either an integer, or a list -- whose elements may also be integers or other lists.
 
 Note: You may assume that the string is well-formed:
 
 String is non-empty.
 String does not contain white spaces.
 String contains only digits 0-9, [, - ,, ].
 Example 1:
 
 Given s = "324",
 
 You should return a NestedInteger object which contains a single integer 324.
 Example 2:
 
 Given s = "[123,[456,[789]]]",
 
 Return a NestedInteger object containing a nested list with 2 elements:
 
 1. An integer containing value 123.
 2. A nested list containing two elements:
 i.  An integer containing value 456.
 ii. A nested list with one element:
 a. An integer containing value 789.
 */


/**
 *  This is the interface that allows for creating nested lists.
 *  You should not implement it, or speculate about its implementation
 */
class NestedInteger {
    
    private var integer = 0
    private var nestedIntegers = [NestedInteger]()
   //Return true if this NestedInteger holds a single integer, rather than a nested list.
    public func isInteger() -> Bool {
        return nestedIntegers.isEmpty
    }

    // Return the single integer that this NestedInteger holds, if it holds a single integer
    // The result is undefined if this NestedInteger holds a nested list
    public func getInteger() -> Int {
        return integer
    }

    // Set this NestedInteger to hold a single integer.
    public func setInteger(_ value: Int) {
        integer = value
    }

    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
    public func add(_ elem: NestedInteger) {
        nestedIntegers.append(elem)
    }

    // Return the nested list that this NestedInteger holds, if it holds a nested list
    // The result is undefined if this NestedInteger holds a single integer
    public func getList() -> [NestedInteger] {
        return nestedIntegers
    }
}

extension Solution {
    func deserialize(_ s: String) -> NestedInteger {
        var stack = [NestedInteger]()
        var value: Int? = nil
        var symbol = 1
        for char in s {
            let num = Int(String(char)) ?? -1
            if num >= 0 && num <= 9 {
                value = 10 * (value ?? 0) + num
            }else if char == "-" {
                symbol = -1
            }else if char == "[" {
                stack.append(NestedInteger())
            }else {
                if value != nil {
                    let nestedInteger = NestedInteger()
                    nestedInteger.setInteger(value! * symbol)
                    stack.last?.add(nestedInteger)
                    symbol = 1
                    value = nil
                }
                if char == "]" {
                    let last = stack.removeLast()
                    if stack.isEmpty {
                        return last
                    }else {
                        stack.last?.add(last)
                    }
                }
            }
        }
        let nestedInteger = NestedInteger()
        nestedInteger.setInteger((value ?? 0) * symbol)
        return nestedInteger
    }
}

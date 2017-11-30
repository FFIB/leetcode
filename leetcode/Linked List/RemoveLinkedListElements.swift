//
//  RemoveLinkedListElements.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//203. Remove Linked List Elements
/*
 Remove all elements from a linked list of integers that have value val.
 
 Example
 Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
 Return: 1 --> 2 --> 3 --> 4 --> 5
 
 Credits:
 Special thanks to @mithmatt for adding this problem and creating all test cases.
 */
extension Solution  {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        head?.next = removeElements(head?.next, val)
        return head?.val == val ? head?.next : head
    }
}

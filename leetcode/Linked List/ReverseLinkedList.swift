//
//  ReverseLinkedList.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//206. Reverse Linked List
/*
 Reverse a singly linked list.
 */
extension Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var list = head
        list = list?.next
        var p = head
        p?.next = nil
        while list != nil {
            let temp = list?.next
            list?.next = p
            p = list
            list = temp
        }
        return p
    }
}

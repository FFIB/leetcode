//
//  RemoveNthNodeFromEndofList.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//19. Remove Nth Node From End of List
/*
 Given a linked list, remove the nth node from the end of list and return its head.
 
 For example,
 
 Given linked list: 1->2->3->4->5, and n = 2.
 
 After removing the second node from the end, the linked list becomes 1->2->3->5.
 Note:
 Given n will always be valid.
 Try to do this in one pass.
 */
extension Solution  {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var list = head
        var count = 1
        while list?.next != nil {
            count += 1
            list = list?.next
        }
        let num = count - n - 1
        if num == -1 {
            return head?.next
        }
        if n == count {
            list?.next = nil
            return head
        }
        
        list = head
        var index = 0
        while list != nil {
            if index == num{
                list?.next = list?.next?.next
                return head
            }
            list = list?.next
            index += 1
        }
        return head
    }
}

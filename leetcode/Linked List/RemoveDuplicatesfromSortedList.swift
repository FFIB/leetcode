//
//  RemoveDuplicatesfromSortedList.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//83. Remove Duplicates from Sorted List
/*
 Given a sorted linked list, delete all duplicates such that each element appear only once.
 
 For example,
 Given 1->1->2, return 1->2.
 Given 1->1->2->3->3, return 1->2->3.
 */
extension Solution  {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard var list = head else {
            return nil
        }
        while list.next != nil {
            if list.val != list.next?.val {
                list = list.next!
            }else {
                list.next = list.next?.next
            }
        }
        return head
    }
}

//
//  RemoveDuplicatesfromSortedListII.swift
//  leetcode
//
//  Created by FFIB on 2017/12/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//82. Remove Duplicates from Sorted List II
/*
 Given a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list.
 
 For example,
 Given 1->2->3->3->4->4->5, return 1->2->5.
 Given 1->1->1->2->3, return 2->3.
 */
extension Solution {
    func deleteDuplicatesII(_ head: ListNode?) -> ListNode? {
        let ans: ListNode? = ListNode(0)
        ans?.next = head
        var current = ans
        while let next = current?.next {
            if next.val == next.next?.val ?? 0 {
                var nextNode = next.next
                while nextNode?.val == next.val {
                    nextNode = nextNode?.next
                }
                current?.next = nextNode
            }else {
                current = next
            }
        }
        return ans?.next
    }
}

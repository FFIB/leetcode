//
//  SwapNodesinPairs.swift
//  leetcode
//
//  Created by FFIB on 2017/6/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//24. Swap Nodes in Pairs
/*
 Given a linked list, swap every two adjacent nodes and return its head.
 
 For example,
 Given 1->2->3->4, you should return the list as 2->1->4->3.
 
 Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed
 */
extension Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var list = head
        while list != nil && list?.next == nil {
            let num = (list?.val)!
            list?.val = (list?.next?.val)!
            list?.next?.val = num
            list = list?.next?.next
        }
        return head
    }
}

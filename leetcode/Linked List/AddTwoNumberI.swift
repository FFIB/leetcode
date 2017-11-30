//
//  AddTwoNumberI.swift
//  leetcode
//
//  Created by FFIB on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//2. Add Two Numbers
/*
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 */
extension Solution {
    func addTwoNumbersI(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        let res = ListNode(0)
        var tmp = res
        var num = 0
        while list1 != nil || list2 != nil {
            if list1 != nil {
                num += (list1?.val)!
                list1 = list1?.next
            }
            if list2 != nil {
                num += (list2?.val)!
                list2 = list2?.next
            }
            tmp.next = ListNode(num % 10)
            tmp = tmp.next!
            num = num / 10
        }
        if num > 0 {
            tmp.next = ListNode(num)
        }
        return res.next
    }
}

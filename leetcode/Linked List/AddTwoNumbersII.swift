//
//  AddTwoNumbersII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//445. Add Two Numbers II
/*
 You are given two non-empty linked lists representing two non-negative integers. The most significant digit comes first and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Follow up:
 What if you cannot modify the input lists? In other words, reversing the lists is not allowed.
 
 Example:
 
 Input: (7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 8 -> 0 -> 7
 */
extension Solution {
    func addTwoNumbersII(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var arr1 = [Int]()
        var arr2 = [Int]()
        
        while list1 != nil {
            arr1.append((list1?.val)!)
            list1 = list1?.next
        }
        while list2 != nil {
            arr2.append((list2?.val)!)
            list2 = list2?.next
        }
        var index1 = arr1.count
        var index2 = arr2.count
        var sum = 0
        var res : ListNode? = nil
        while index1 > 0 || index2 > 0 {
            if index1 > 0 {
                sum += arr1[index1 - 1]
            }
            if index2 > 0 {
                sum += arr2[index2 - 1]
            }
            let list = ListNode(sum % 10)
            list.next = res
            res = list
            sum /= 10
            index2 -= 1
            index1 -= 1
        }
        if sum > 0 {
            let list = ListNode(sum % 10)
            list.next = res
            res = list
        }
        return res
    }
}

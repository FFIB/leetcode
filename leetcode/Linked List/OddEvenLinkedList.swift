//
//  OddEvenLinkedList.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//328. Odd Even Linked List
/*
 Given a singly linked list, group all odd nodes together followed by the even nodes. Please note here we are talking about the node number and not the value in the nodes.
 
 You should try to do it in place. The program should run in O(1) space complexity and O(nodes) time complexity.
 
 Example:
 Given 1->2->3->4->5->NULL,
 return 1->3->5->2->4->NULL.
 
 Note:
 The relative order inside both the even and odd groups should remain as it was in the input.
 The first node is considered odd, the second node even and so on ...
 
 Credits:
 Special thanks to @DjangoUnchained for adding this problem and creating all test cases.
 */
extension Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        var list = head
        var oddArr = [Int]()
        var evenArr = [Int]()
        var count = 1
        while list != nil {
            if count % 2 == 1 {
                oddArr.append((list?.val)!)
            }else {
                evenArr.append((list?.val)!)
            }
            list = list?.next
            count += 1
        }
        list = head
        var index = 0
        let oddCount = oddArr.count
        while list != nil {
            if index < oddCount {
                list?.val = oddArr[index]
            }else {
                list?.val = evenArr[index - oddCount]
            }
            index += 1
            list = list?.next
            
        }
        return head
    }
}

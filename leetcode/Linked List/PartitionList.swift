//
//  PartitionList.swift
//  leetcode
//
//  Created by FFIB on 2017/8/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//86. Partition List
/*
 Given a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.
 
 You should preserve the original relative order of the nodes in each of the two partitions.
 
 For example,
 Given 1->4->3->2->5->2 and x = 3,
 return 1->2->2->4->3->5.
 */
extension Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        var list = head
        let leftList = ListNode(0)
        let rightList = ListNode(0)
        var left = leftList
        var right = rightList
        while list?.next != nil {
            if (list?.val)! >= x {
                right.next = ListNode((list?.val)!)
                right = right.next!
            }else {
                left.next = ListNode((list?.val)!)
                left = left.next!
            }
            list = list?.next
        }
        left.next = rightList
        return leftList
    }
}

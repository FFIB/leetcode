//
//  PartitionList.swift
//  leetcode
//
//  Created by FFIB on 2017/8/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        var list = head
        var leftList = ListNode(0)
        var rightList = ListNode(0)
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

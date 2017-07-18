//
//  AddTwoNumberI.swift
//  leetcode
//
//  Created by LISA on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

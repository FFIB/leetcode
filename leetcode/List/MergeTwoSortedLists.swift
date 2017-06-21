//
//  MergeTwoSortedLists.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        var temp = result
        var list1 = l1
        var list2 = l2
        while list1 != nil && list2 != nil{
            if (list1?.val)! >= (list2?.val)! {
                temp.next = ListNode((list2?.val)!)
                list2 = list2?.next
            }else {
                temp.next = ListNode((list1?.val)!)
                list1 = list1?.next
            }
            temp = temp.next!
        }
        if list1 != nil {
            temp.next = list1!
        }
        if list2 != nil {
            temp.next = list2!
        }
        return result.next
    }
}

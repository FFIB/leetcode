//
//  RemoveDuplicatesfromSortedList.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

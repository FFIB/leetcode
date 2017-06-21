//
//  RemoveLinkedListElements.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution  {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        head?.next = removeElements(head?.next, val)
        return head?.val == val ? head?.next : head
    }
}

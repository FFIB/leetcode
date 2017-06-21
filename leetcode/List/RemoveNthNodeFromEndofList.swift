//
//  RemoveNthNodeFromEndofList.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution  {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var list = head
        var count = 1
        while list?.next != nil {
            count += 1
            list = list?.next
        }
        let num = count - n - 1
        if num == -1 {
            return head?.next
        }
        if n == count {
            list?.next = nil
            return head
        }
        
        list = head
        var index = 0
        while list != nil {
            if index == num{
                list?.next = list?.next?.next
                return head
            }
            list = list?.next
            index += 1
        }
        return head
    }
}

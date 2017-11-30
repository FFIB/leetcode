//
//  ReorderList.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//143. Reorder List
/*
 Given a singly linked list L: L0→L1→…→Ln-1→Ln,
 reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…
 
 You must do this in-place without altering the nodes' values.
 
 For example,
 Given {1,2,3,4}, reorder it to {1,4,2,3}.
 */
extension Solution  {
    func reorderList(_ head: ListNode?) {
        var arr = [Int]()
        var count = 0
        var list = head
        while list != nil {
            arr.append((list?.val)!)
            count += 1
            list = list?.next
        }
        list = head
        var index = 1
        while index <= count / 2 {
            let element = ListNode(arr[count - index])
            element.next = list?.next
            list?.next = element
            
            if index == count / 2 {
                if count % 2 == 0 {
                    list?.next?.next = nil
                }else {
                    list?.next?.next?.next = nil
                }
                
            }else {
                list = list?.next?.next
            }
            index += 1
        }
    }
}

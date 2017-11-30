//
//  InsertionSortList.swift
//  leetcode
//
//  Created by FFIB on 2017/8/30.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//147. Insertion Sort List
/*
 Sort a linked list using insertion sort.
 */
extension Solution {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        var origin = head
        let res = ListNode(0)
        while let originList = origin {
            var final = res
            while let finalList = final.next, finalList.val <= originList.val {
                final = finalList
            }
            let tmp = ListNode(originList.val)
            tmp.next = final.next
            final.next = tmp
            origin = originList.next
        }
        return res.next
    }
}

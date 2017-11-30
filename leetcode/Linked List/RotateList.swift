//
//  RotateList.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//61. Rotate List
/*
 Given a list, rotate the list to the right by k places, where k is non-negative.
 
 
 Example:
 
 Given 1->2->3->4->5->NULL and k = 2,
 
 return 4->5->1->2->3->NULL.
 */
extension Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        var arr = [Int]()
        var list = head
        var count = 0
        while list != nil {
            arr.append((list?.val)!)
            list = list?.next
            count += 1
        }
        if count == 0{
            return head
        }
        let target = count - k % count
        if count <= target || target == 0{
            return head
        }
        var result = head
        var index = target
        while index < count{
            result?.val = arr[index]
            result = result?.next
            index += 1
        }
        index = 0
        while index <= target{
            result?.val = arr[index]
            result = result?.next
            index += 1
        }
        return head
    }
}

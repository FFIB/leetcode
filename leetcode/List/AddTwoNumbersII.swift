//
//  AddTwoNumbersII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func addTwoNumbersII(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var arr1 = [Int]()
        var arr2 = [Int]()
        
        while list1 != nil {
            arr1.append((list1?.val)!)
            list1 = list1?.next
        }
        while list2 != nil {
            arr2.append((list2?.val)!)
            list2 = list2?.next
        }
        var index1 = arr1.count
        var index2 = arr2.count
        var sum = 0
        var res : ListNode? = nil
        while index1 > 0 || index2 > 0 {
            if index1 > 0 {
                sum += arr1[index1 - 1]
            }
            if index2 > 0 {
                sum += arr2[index2 - 1]
            }
            let list = ListNode(sum % 10)
            list.next = res
            res = list
            sum /= 10
            index2 -= 1
            index1 -= 1
        }
        if sum > 0 {
            let list = ListNode(sum % 10)
            list.next = res
            res = list
        }
        return res
    }
}

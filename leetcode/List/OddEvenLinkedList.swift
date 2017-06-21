//
//  OddEvenLinkedList.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        var list = head
        var oddArr = [Int]()
        var evenArr = [Int]()
        var count = 1
        while list != nil {
            if count % 2 == 1 {
                oddArr.append((list?.val)!)
            }else {
                evenArr.append((list?.val)!)
            }
            list = list?.next
            count += 1
        }
        list = head
        var index = 0
        let oddCount = oddArr.count
        while list != nil {
            if index < oddCount {
                list?.val = oddArr[index]
            }else {
                list?.val = evenArr[index - oddCount]
            }
            index += 1
            list = list?.next
            
        }
        return head
    }
}

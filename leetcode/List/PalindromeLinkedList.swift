//
//  PalindromeLinkedList.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution  {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var list = head
        var arr = [Int]()
        while list != nil {
            arr.append((list?.val)!)
            list = list?.next
        }
        var left = 0
        var right = arr.count - 1
        while left < right {
            if arr[left] == arr[right]{
                left += 1
                right -= 1
            }else {
                return false
            }
        }
        return true
    }
}

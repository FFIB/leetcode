//
//  SwapNodesinPairs.swift
//  leetcode
//
//  Created by LISA on 2017/6/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var list = head
        while list != nil && list?.next == nil {
            let num = (list?.val)!
            list?.val = (list?.next?.val)!
            list?.next?.val = num
            list = list?.next?.next
        }
        return head
    }
}

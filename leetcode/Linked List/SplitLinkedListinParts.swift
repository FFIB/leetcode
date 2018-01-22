//
//  SplitLinkedListinParts.swift
//  leetcode
//
//  Created by FFIB on 2018/1/22.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//725. Split Linked List in Parts
/*
 Given a (singly) linked list with head node root, write a function to split the linked list into k consecutive linked list "parts".
 
 The length of each part should be as equal as possible: no two parts should have a size differing by more than 1. This may lead to some parts being null.
 
 The parts should be in order of occurrence in the input list, and parts occurring earlier should always have a size greater than or equal parts occurring later.
 
 Return a List of ListNode's representing the linked list parts that are formed.
 
 Examples 1->2->3->4, k = 5 // 5 equal parts [ [1], [2], [3], [4], null ]
 Example 1:
 Input:
 root = [1, 2, 3], k = 5
 Output: [[1],[2],[3],[],[]]
 Explanation:
 The input and each element of the output are ListNodes, not arrays.
 For example, the input root has root.val = 1, root.next.val = 2, \root.next.next.val = 3, and root.next.next.next = null.
 The first element output[0] has output[0].val = 1, output[0].next = null.
 The last element output[4] is null, but it's string representation as a ListNode is [].
 Example 2:
 Input:
 root = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], k = 3
 Output: [[1, 2, 3, 4], [5, 6, 7], [8, 9, 10]]
 Explanation:
 The input has been split into consecutive parts with size difference at most 1, and earlier parts are a larger size than the later parts.
 Note:
 
 The length of root will be in the range [0, 1000].
 Each value of a node in the input will be an integer in the range [0, 999].
 k will be an integer in the range [1, 50].
 */
extension Solution {
    func splitListToParts(_ root: ListNode?, _ k: Int) -> [ListNode?] {
        
        //求长度
        func findlength(root: ListNode?) -> Int {
            var list = root
            var length = 0
            while list != nil {
                length += 1
                list = list?.next
            }
            return length
        }
        
        
        //求每个链表的长度
        func findListLength(length: Int) -> [Int] {
            let num = length / k
            let r = length % k
            let counts: [Int]
            if r > 0 && r < length {
                counts = Array(repeating: num + 1, count: r) + Array(repeating: num, count: k - r)
            }else if r == length {
                counts = Array(repeating: 1, count: length) + Array(repeating: -1, count: k - length)
            }else {
                counts = Array(repeating: num, count: k)
            }
            return counts
        }
        
        let counts = findListLength(length: findlength(root: root))
        var list = root
        var ans = [ListNode?]()
        for count in counts {
            if count == -1 {
                ans.append(nil)
                continue
            }
            var node = list
            for _ in 0..<count - 1 {
                node = node?.next
            }
            
            ans.append(list)
            list = node?.next
            node?.next = nil
        }
        return ans
    }
}

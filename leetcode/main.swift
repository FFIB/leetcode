//
//  main.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class Solution { }

//MARK: ListNode
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        var d = "["
        var list: ListNode? = self
        while list != nil {
            if list?.next == nil {
                d.append("\(list!.val)]")
            }else {
                d.append("\(list!.val), ")
            }
            
            list = list?.next
        }
        return d
    }
}

extension ListNode: Equatable {
    public static func ==(lhs: ListNode, rhs: ListNode) -> Bool {
        var l: ListNode? = lhs
        var r: ListNode? = rhs
        while l != nil, r != nil, l?.val == r?.val {
            l = l?.next
            r = r?.next
        }
        return l == nil && r == nil
    }
}

//MARK: Interval
public class Interval {
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

extension Interval: CustomStringConvertible {
    public var description: String {
        return "start:\(start) end:\(end)"
    }
}

//MARK: TreeNode
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}



func isPrime(x: Int) -> Bool {
    var i = 3
    while i * i <= x {
        if x % i == 0 { return false }
        i += 2
    }
    return true

}

print(isPrime(x: 202))

//print(Solution().minEatingSpeed([873375536, 395271806, 617254718, 970525912, 634754347, 824202576, 694181619, 20191396, 886462834, 442389139, 572655464, 438946009, 791566709, 776244944, 694340852, 419438893, 784015530, 588954527, 282060288, 269101141, 499386849, 846936808, 92389214, 385055341, 56742915, 803341674, 837907634, 728867715, 20958651, 167651719, 345626668, 701905050, 932332403, 572486583, 603363649, 967330688, 484233747, 859566856, 446838995, 375409782, 220949961, 72860128, 998899684, 615754807, 383344277, 36322529, 154308670, 335291837, 927055440, 28020467, 558059248, 999492426, 991026255, 30205761, 884639109, 61689648, 742973721, 395173120, 38459914, 705636911, 30019578, 968014413, 126489328, 738983100, 793184186, 871576545, 768870427, 955396670, 328003949, 786890382, 450361695, 994581348, 158169007, 309034664, 388541713, 142633427, 390169457, 161995664, 906356894, 379954831, 448138536],
//    943223529))

//var power2 = [[Int]]()
//for i in 0..<31 {
//    var power = Array(repeating: 0, count: 10)
//    for char in "\(2<<i)".unicodeScalars {
//        power[Int(char.value) - 48] += 1
//    }
//    power2.append(power)
//}
//print(power2)

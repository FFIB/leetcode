//
//  SmallestRange.swift
//  leetcode
//
//  Created by FFIB on 2017/9/11.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//632. Smallest Range
/*
 You have k lists of sorted integers in ascending order. Find the smallest range that includes at least one number from each of the k lists.
 
 We define the range [a,b] is smaller than range [c,d] if b-a < d-c or a < c if b-a == d-c.
 
 Example 1:
 Input:[[4,10,15,24,26], [0,9,12,20], [5,18,22,30]]
 Output: [20,24]
 Explanation:
 List 1: [4, 10, 15, 24,26], 24 is in range [20,24].
 List 2: [0, 9, 12, 20], 20 is in range [20,24].
 List 3: [5, 18, 22, 30], 22 is in range [20,24].
 Note:
 The given list may contain duplicates, so ascending order means >= here.
 1 <= k <= 3500
 -105 <= value of elements <= 105.
 For Java users, please note that the input type has been changed to List<List<Integer>>. And after you reset the code template, you'll see this point.
 */
public struct PriorityQueue<T: Comparable> {
    
    fileprivate var heap = [T]()
    private let ordered: (T, T) -> Bool
    
    public init(ascending: Bool = false) {
        self.init(order: ascending ? { $0 > $1 } : { $0 < $1 })
    }
    
    public init(order: @escaping (T, T) -> Bool) {
        ordered = order
        var i = heap.count/2 - 1
        while i >= 0 {
            sink(i)
            i -= 1
        }
    }
    
    public var count: Int { return heap.count }
    
    public var isEmpty: Bool { return heap.isEmpty }
    
    public mutating func push(_ element: T) {
        heap.append(element)
        swim(heap.count - 1)
    }
    
    public mutating func pop() -> T? {
        
        if heap.isEmpty { return nil }
        if heap.count == 1 { return heap.removeFirst() }
        heap.swapAt(0, heap.count - 1)
        let temp = heap.removeLast()
        sink(0)
        
        return temp
    }
    
    private mutating func sink(_ index: Int) {
        var index = index
        while 2 * index + 1 < heap.count {
            
            var j = 2 * index + 1
            
            if j < (heap.count - 1) && ordered(heap[j], heap[j + 1]) { j += 1 }
            if !ordered(heap[index], heap[j]) { break }
            heap.swapAt(index, j)
            index = j
        }
    }
    
    private mutating func swim(_ index: Int) {
        var index = index
        while index > 0 && ordered(heap[(index - 1) / 2], heap[index]) {
            heap.swapAt((index - 1) / 2, index)
            index = (index - 1) / 2
        }
    }
}


extension PriorityQueue: IteratorProtocol {
    
    public typealias Element = T
    mutating public func next() -> Element? { return pop() }
}

// MARK: - SequenceType
extension PriorityQueue: Sequence {
    
    public typealias Iterator = PriorityQueue
    public func makeIterator() -> Iterator { return self }
}

// MARK: - CollectionType
extension PriorityQueue: Collection {
    
    public typealias Index = Int
    
    public var startIndex: Int { return heap.startIndex }
    public var endIndex: Int { return heap.endIndex }
    
    public subscript(i: Int) -> T { return heap[i] }
    
    public func index(after i: PriorityQueue.Index) -> PriorityQueue.Index {
        return heap.index(after: i)
    }
}

extension PriorityQueue: CustomStringConvertible {
    public var description: String {
        return heap.description
    }
    
    
}

struct Point {
    var x: Int
    var y: Int
}

extension Point: Comparable {
    
    static func <(lhs: Point, rhs: Point) -> Bool {
        return lhs.x < rhs.x
    }
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
}


extension Solution {
    func smallestRange(_ nums: [[Int]]) -> [Int] {
        guard !nums.isEmpty else{
            return []
        }
        var pq =  PriorityQueue<Point>(ascending: true)
        var maxValue = 0
        var indexArr = Array(repeating: 0, count: nums.count)
        for (i, list) in nums.enumerated() {
            pq.push(Point(x: list.first!, y: i))
            maxValue = max(maxValue, list.first!)
        }
        var start = -1, end = -1, interval = Int.max
        while pq.count == nums.count {
            var peak = pq.pop()!
            let minValue = peak.x, index = peak.y
            if maxValue - minValue < interval {
                interval = maxValue - minValue
                start = minValue
                end = maxValue
            }
            indexArr[index] += 1
            let index_y = indexArr[index]
            if index_y < nums[index].count {
                peak.x = nums[index][index_y]
                pq.push(peak)
                maxValue = max(peak.x, maxValue)
            }
        }
        
        return [start, end]
    }
}

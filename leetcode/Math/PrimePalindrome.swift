//
//  PrimePalindrome.swift
//  leetcode
//
//  Created by FFIB on 2018/7/19.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//866. Prime Palindrome
/*
 Find the smallest prime palindrome greater than or equal to N.

 Recall that a number is prime if it's only divisors are 1 and itself, and it is greater than 1.

 For example, 2,3,5,7,11 and 13 are primes.

 Recall that a number is a palindrome if it reads the same from left to right as it does from right to left.

 For example, 12321 is a palindrome.



 Example 1:

 Input: 6
 Output: 7
 Example 2:

 Input: 8
 Output: 11
 Example 3:

 Input: 13
 Output: 101


 Note:

 1 <= N <= 10^8
 The answer is guaranteed to exist and be less than 2 * 10^8.
 */
extension Solution {
    func primePalindrome(_ N: Int) -> Int {

        switch N {
        case 1...2:
            return 2
        case 3...5:
            return N
        case 6...7:
            return 7
        case 8...11:
            return 11
        case 12...101:
            return 101
        case 930...10301:
            return 10301
        case 98690...1003001:
            return 1003001
        case 9989900...100030001:
            return 100030001
        default:
            break
        }

        let nums = Array("\(N)")
        var start = Int(String(nums[0...(nums.count / 2)]))!
        var end = Int(pow(10.0, Double(nums.count / 2 + 1))) - 1

        func isPrime(x: Int) -> Bool {
            var i = 3
            while i * i <= x {
                if x % i == 0 { return false }
                i += 2
            }
            return true
        }

        func isPalindrome(x: Int) -> Bool {
            let str = "\(x)"
            return String(str.reversed()) == str
        }
        for n in start...end {
            var s = "\(n)"
            s.removeLast()
            let target = Int("\(n)" + "\(String(s.reversed()))")!
            guard target >= N || target % 2 == 0 else {
                continue
            }
            if isPalindrome(x: target) && isPrime(x: target) {
                return target
            }
        }
        return -1
    }
}

//
//  SubstringwithConcatenationofAllWords.swift
//  leetcode
//
//  Created by FFIB on 2017/9/3.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        guard words.count > 0 else {
            return []
        }
        
        let sc = NSString(string: s)
        let wlen = words.first!.characters.count
        var res = [Int]()
        guard sc.length >= wlen*words.count else {
            return res
        }
        
        var dict = [String : Int]()
        for word in words{
            dict[word] = (dict[word] ?? 0) + 1
        }
        
        for i in 0 ..< wlen {
            let splitStrs = (0..<(sc.length - i)/wlen).map({ (index) -> String in
                return sc.substring(with: NSMakeRange(i+index*wlen, wlen))
            })
            guard splitStrs.count >= words.count else { break }
            var fitCount = 0
            var right = 0
            var left = -1
            var subDict = [String : Int]()
            for j in 0 ..< splitStrs.count {
                let subS = splitStrs[j]
                if dict[subS] != nil {
                    fitCount += 1
                    subDict[subS] = (subDict[subS] ?? 0) + 1
                    
                    if subDict[subS]! > dict[subS]! {
                        left = splitStrs[right..<j].index(of: subS) ?? -1
                    }else {
                        if fitCount == words.count {
                            res.append(i+right*wlen)
                            left = right
                        }
                    }
                }else {
                    left = j
                }
                
                if left >= 0{
                    for k in right...left where subDict[splitStrs[k]] != nil {
                        fitCount -= 1
                        subDict[splitStrs[k]]! -= 1
                    }
                    right = left + 1
                    left = -1
                }
            }
        }
        return res
    }
}

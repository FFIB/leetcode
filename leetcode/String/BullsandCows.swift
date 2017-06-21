//
//  BullsandCows.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation


extension Solution  {
    func getHint(_ secret: String, _ guess: String) -> String {
        let secretArr = Array(secret.characters)
        let guessArr = Array(guess.characters)
        var cow = 0
        var bull = 0
        var s = [Character]()
        var g = [Character]()
        for i in 0..<secretArr.count {
            if secretArr[i] == guessArr[i] {
                bull += 1
            }else {
                s.append(secretArr[i])
                g.append(guessArr[i])
            }
        }
        for char in g {
            if let index = s.index(of: char) {
                cow += 1
                s.remove(at: index)
            }
            
        }
        return "\(bull)A\(cow)B"
    }
}

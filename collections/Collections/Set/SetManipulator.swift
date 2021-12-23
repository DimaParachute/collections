//
//  SetManipulator.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 03.12.2021.
//

import Foundation

struct SetManipulator {
    var firstSet = Set<Character>()
    var secondSet = Set<Character>()
    
    var resOfMatchingLetters = ""
    var resOfNotMatchingLetters = ""
    var resOfNotMatchingFromFirstTF = ""
    
    mutating func matchingLetters() {
        resOfMatchingLetters = String(firstSet.intersection(secondSet))
    }
    
    mutating func notMatchingLetters() {
        resOfNotMatchingLetters = String(firstSet.symmetricDifference(secondSet))
    }
    
    mutating func notMatchingFromFirstTextField() {
        resOfNotMatchingFromFirstTF = String(firstSet.subtracting(secondSet))
    }
}

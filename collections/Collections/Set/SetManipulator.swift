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
    
    var resultOfMatchingLetters = ""
    var resultOfNotMatchingLetters = ""
    var resultOfNotMatchingLettersFromFirstTextField = ""
    
    mutating func matchingLetters() {
        resultOfMatchingLetters = String(firstSet.intersection(secondSet))
    }
    
    mutating func notMatchingLetters() {
        resultOfNotMatchingLetters = String(firstSet.symmetricDifference(secondSet))
    }
    
    mutating func notMatchingFromFirstTextField() {
        resultOfNotMatchingLettersFromFirstTextField = String(firstSet.subtracting(secondSet))
    }
}

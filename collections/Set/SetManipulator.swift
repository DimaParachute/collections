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
    
    func matchingLetters() -> String {
        return String(firstSet.intersection(secondSet))
    }
    
    func notMatchingLetters() -> String {
        return String(firstSet.symmetricDifference(secondSet))
    }
    
    func notMatchingFromFirstTextField() -> String {
        return String(firstSet.subtracting(secondSet))
    }
}

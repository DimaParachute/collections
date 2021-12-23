//
//  arrayManipulator.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 29.11.2021.
//

import Foundation

struct ArrayManipulator {
    
    var originArray = [Int]()
    
    //MARK:- Default values
    let oneThousandElements = (0..<1000).map{ _ in Int.random(in: 1 ... 100) }
    var resOfInsAtTheBegOneByOne = 0
    var resOfInsAtTheBegAtOnce = 0
    var resOfInsInTheMidOneByOne = 0
    var resOfInsInTheMidAtOnce = 0
    var resOfAppInTheEndOneByOne = 0
    var resOfAppInTheEndAtOnce = 0
    var resOfRemAtTheBegOneByOne = 0
    var resOfRemAtTheBegAtOnce = 0
    var resOfRemInTheMidOneByOne = 0
    var resOfRemInTheMidAtOnce = 0
    var resOfRemAtTheEndOneByOne = 0
    var resOfRemAtTheEndAtOnce = 0
    
    //MARK:- Manipulations with array
    mutating func arrayCreating() {
        originArray = (0..<10000000).map{ _ in Int.random(in: 1 ... 100) }
    }
    
    mutating func insertAtTheBeginningOneByOne() {
        var newArray = originArray
        for i in oneThousandElements {
            newArray.insert(oneThousandElements[i], at: 0)
        }
        print(newArray.count)
        resOfInsAtTheBegOneByOne = newArray.count
    }
    
    mutating func insertAtTheBeginningAtOnce() {
        var newArray = originArray
        newArray.insert(contentsOf: oneThousandElements, at: 0)
        print(newArray.count)
        resOfInsAtTheBegAtOnce = newArray.count
    }
    
    mutating func insertInTheMiddleOneByOne() {
        var newArray = originArray
        for i in oneThousandElements {
            newArray.insert(oneThousandElements[i], at: ((newArray.count)/2)-1)
        }
        print(newArray.count)
        resOfInsInTheMidOneByOne = newArray.count
    }
    
    mutating func insertInTheMiddleAtOnce() {
        var newArray = originArray
        newArray.insert(contentsOf: oneThousandElements, at: ((newArray.count)/2)-1)
        print(newArray.count)
        resOfInsInTheMidAtOnce = newArray.count
    }
    
    mutating func appendToTheEndOneByOne() {
        var newArray = originArray
        for i in oneThousandElements {
            newArray.append(oneThousandElements[i])
        }
        print(newArray.count)
        resOfAppInTheEndOneByOne = newArray.count
    }
    
    mutating func appendToTheEndAtOnce() {
        var newArray = originArray
        newArray.append(contentsOf: oneThousandElements)
        print(newArray.count)
        resOfAppInTheEndAtOnce = newArray.count
    }
    
    mutating func removeAtTheBeginningOneByOne() {
        var newArray = originArray
        while newArray.count > 9999000 {
            newArray.removeLast()
        }
        print(newArray.count)
        resOfRemAtTheBegOneByOne = newArray.count
    }
    
    mutating func removeAtTheBeginningAtOnce() {
        var newArray = originArray
        newArray.removeLast(1000)
        print(newArray.count)
        resOfRemAtTheBegAtOnce = newArray.count
    }
    
    mutating func removeInTheMiddleOneByOne() {
        var newArray = originArray
        while newArray.count > 9999000 {
            newArray.remove(at: ((newArray.count)/2)-1)
        }
        print(newArray.count)
        resOfRemInTheMidOneByOne = newArray.count
    }
    
    mutating func removeInTheMiddleAtOnce() {
        var newArray = originArray
        newArray.removeSubrange(((newArray.count)/2)-500...((newArray.count)/2)+499)
        print(newArray.count)
        resOfRemInTheMidAtOnce = newArray.count
    }
    
    mutating func removeAtTheEndOneByOne() {
        var newArray = originArray
        while newArray.count > 9999000 {
            newArray.removeLast()
        }
        print(newArray.count)
        resOfRemAtTheEndOneByOne = newArray.count
    }
    
    mutating func removeAtTheEndAtOnce() {
        var newArray = originArray
        newArray.removeLast(1000)
        print(newArray.count)
        resOfRemAtTheEndAtOnce = newArray.count
    }
}

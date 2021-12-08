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
    
    //MARK:- Manipulations with array
    mutating func arrayCreating() {
        originArray = (0..<10000000).map{ _ in Int.random(in: 1 ... 100) }
    }
    
    func insertAtTheBeginningOneByOne() {
        var newArray = originArray
        for i in oneThousandElements {
            newArray.insert(oneThousandElements[i], at: 0)
        }
        print(newArray.count)
    }
    
    func insertAtTheBeginningAtOnce() {
        var newArray = originArray
        newArray.insert(contentsOf: oneThousandElements, at: 0)
        print(newArray.count)
    }
    
    func insertInTheMiddleOneByOne() {
        var newArray = originArray
        for i in oneThousandElements {
            newArray.insert(oneThousandElements[i], at: ((newArray.count)/2)-1)
        }
        print(newArray.count)
    }
    
    func insertInTheMiddleAtOnce() {
        var newArray = originArray
        newArray.insert(contentsOf: oneThousandElements, at: ((newArray.count)/2)-1)
        print(newArray.count)
    }
    
    func appendToTheEndOneByOne() {
        var newArray = originArray
        for i in oneThousandElements {
            newArray.append(oneThousandElements[i])
        }
        print(newArray.count)
    }
    
    func appendToTheEndAtOnce() {
        var newArray = originArray
        newArray.append(contentsOf: oneThousandElements)
        print(newArray.count)
    }
    
    func removeAtTheBeginningOneByOne() {
        var newArray = originArray
        while newArray.count > 9999000 {
            newArray.removeLast()
        }
        print(newArray.count)
    }
    
    func removeAtTheBeginningAtOnce() {
        var newArray = originArray
        newArray.removeLast(1000)
        print(newArray.count)
    }
    
    func removeInTheMiddleOneByOne() {
        var newArray = originArray
        while newArray.count > 9999000 {
            newArray.remove(at: ((newArray.count)/2)-1)
        }
        print(newArray.count)
    }
    
    func removeInTheMiddleAtOnce() {
        var newArray = originArray
        newArray.removeSubrange(((newArray.count)/2)-500...((newArray.count)/2)+499)
        print(newArray.count)
    }
    
    func removeAtTheEndOneByOne() {
        var newArray = originArray
        while newArray.count > 9999000 {
            newArray.removeLast()
        }
        print(newArray.count)
    }
    
    func removeAtTheEndAtOnce() {
        var newArray = originArray
        newArray.removeLast(1000)
        print(newArray.count)
    }
}

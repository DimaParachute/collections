//
//  DictionaryManipulator.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 03.12.2021.
//

import Foundation

struct DictionaryManipulator {
    var contactArray = [String]()
    var contactDictionary = [String: String]()
    
    mutating func contactArrayGenerator() {
        var i = 0
        while contactArray.count < 10000000 {
            contactArray.append("Name\(i)")
            i += 1
        }
    }
    
    mutating func contactDictionaryGenetor() {
        var i = 0
        while contactDictionary.count < 10000000 {
            contactDictionary[String(i)] = "Name"
            i += 1
        }
    }
    
    func findTheFirstContactArray() {
        print(contactArray[0])
    }
    
    func findTheFirstContactDictionary() {
        print("\(contactDictionary["0"]!)0")
    }
    
    func findTheLastContactArray() {
        print(contactArray[contactArray.count-1])
    }
    
    func findTheLastContactDictionary() {
        print("\(contactDictionary[String(contactDictionary.count-1)]!)\(contactDictionary.count-1)")
    }
    
    func searchForANonExistingElementArray() {
        for item in contactArray {
            if item == "Non existing" {
                print("Success!")
            }
        }
    }
    
    func searchForANonExistingElementDictionary() {
        for item in contactDictionary.keys {
            if item == "Non existing" {
                print("Success!")
            }
        }
    }
}

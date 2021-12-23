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
    
    var resOfFinTheFirConArr = ""
    var resOfFinTheFirConDic = ""
    var resOfFinTheLasConArr = ""
    var resOfFinTheLasConDic = ""
    var resOfSeaForANonExiEleArr = ""
    var resOfSeaForANonExiEleDic = ""
    
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
    
    mutating func findTheFirstContactArray() {
        let result = contactArray[0]
        print(result)
        resOfFinTheFirConArr = result
        
    }
    
    mutating func findTheFirstContactDictionary() {
        let result = "\(contactDictionary["0"]!)0"
        print(result)
        resOfFinTheFirConDic = result
    }
    
    mutating func findTheLastContactArray() {
        let result = contactArray[contactArray.count-1]
        print(result)
        resOfFinTheLasConArr = result
    }
    
    mutating func findTheLastContactDictionary() {
        let result = "\(contactDictionary[String(contactDictionary.count-1)]!)\(contactDictionary.count-1)"
        print(result)
        resOfFinTheLasConDic = result
    }
    
    mutating func searchForANonExistingElementArray() {
        var result = "0"
        for item in contactArray {
            if item == "Non existing" {
                result = "Success!"
            }
        }
        resOfSeaForANonExiEleArr = result
    }
    
    mutating func searchForANonExistingElementDictionary() {
        var result = "0"
        for item in contactDictionary.keys {
            if item == "Non existing" {
                result = "Success!"
            }
        }
        resOfSeaForANonExiEleDic = result
    }
}

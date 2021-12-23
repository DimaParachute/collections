//
//  CollectionsDictionaryTests.swift
//  collectionsTests
//
//  Created by Дмитрий Фетюхин on 17.12.2021.
//

import XCTest
@testable import collections

class CollectionsDictionaryTests: XCTestCase {

    private var dictionaryManipulator = DictionaryManipulator()
    
    func testDictionaryOptions() throws {
        dictionaryManipulator.contactArrayGenerator()
        XCTAssertEqual(dictionaryManipulator.contactArray.count, 10000000)
        dictionaryManipulator.contactDictionaryGenetor()
        XCTAssertEqual(dictionaryManipulator.contactDictionary.count, 10000000)
        dictionaryManipulator.findTheFirstContactArray()
        XCTAssertEqual(dictionaryManipulator.resOfFinTheFirConArr, "Name0")
        dictionaryManipulator.findTheFirstContactDictionary()
        XCTAssertEqual(dictionaryManipulator.resOfFinTheFirConDic, "Name0")
        dictionaryManipulator.findTheLastContactArray()
        XCTAssertEqual(dictionaryManipulator.resOfFinTheLasConArr, "Name9999999")
        dictionaryManipulator.findTheLastContactDictionary()
        XCTAssertEqual(dictionaryManipulator.resOfFinTheLasConDic, "Name9999999")
        dictionaryManipulator.searchForANonExistingElementArray()
        XCTAssertEqual(dictionaryManipulator.resOfSeaForANonExiEleArr, "0")
        dictionaryManipulator.searchForANonExistingElementDictionary()
        XCTAssertEqual(dictionaryManipulator.resOfSeaForANonExiEleDic, "0")
    }
    
    func testPerformance() throws {
        measure {
            dictionaryManipulator.contactArrayGenerator()
            dictionaryManipulator.contactDictionaryGenetor()
            dictionaryManipulator.findTheFirstContactArray()
            dictionaryManipulator.findTheFirstContactDictionary()
            dictionaryManipulator.findTheLastContactArray()
            dictionaryManipulator.findTheLastContactDictionary()
            dictionaryManipulator.searchForANonExistingElementArray()
            dictionaryManipulator.searchForANonExistingElementDictionary()
        }
    }

}

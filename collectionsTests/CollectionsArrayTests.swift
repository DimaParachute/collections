//
//  collectionsTests.swift
//  collectionsTests
//
//  Created by Дмитрий Фетюхин on 08.12.2021.
//

import XCTest
@testable import collections

class CollectionsArrayTests: XCTestCase {

    private var arrayManipulator = ArrayManipulator()
    
    func testArrayOptions() throws {
        arrayManipulator.arrayCreating()
        XCTAssertEqual(arrayManipulator.originArray.count, 10000000)
        arrayManipulator.insertAtTheBeginningOneByOne()
        XCTAssertEqual(arrayManipulator.resOfInsAtTheBegOneByOne, 10001000)
        arrayManipulator.insertAtTheBeginningAtOnce()
        XCTAssertEqual(arrayManipulator.resOfInsAtTheBegAtOnce, 10001000)
        arrayManipulator.insertInTheMiddleOneByOne()
        XCTAssertEqual(arrayManipulator.resOfInsInTheMidOneByOne, 10001000)
        arrayManipulator.insertInTheMiddleAtOnce()
        XCTAssertEqual(arrayManipulator.resOfInsInTheMidAtOnce, 10001000)
        arrayManipulator.appendToTheEndOneByOne()
        XCTAssertEqual(arrayManipulator.resOfAppInTheEndOneByOne, 10001000)
        arrayManipulator.appendToTheEndAtOnce()
        XCTAssertEqual(arrayManipulator.resOfAppInTheEndAtOnce, 10001000)
        arrayManipulator.removeAtTheBeginningOneByOne()
        XCTAssertEqual(arrayManipulator.resOfRemAtTheBegOneByOne, 9999000)
        arrayManipulator.removeAtTheBeginningAtOnce()
        XCTAssertEqual(arrayManipulator.resOfRemAtTheBegAtOnce, 9999000)
        arrayManipulator.removeInTheMiddleOneByOne()
        XCTAssertEqual(arrayManipulator.resOfRemInTheMidOneByOne, 9999000)
        arrayManipulator.removeInTheMiddleAtOnce()
        XCTAssertEqual(arrayManipulator.resOfRemInTheMidAtOnce, 9999000)
        arrayManipulator.removeAtTheEndOneByOne()
        XCTAssertEqual(arrayManipulator.resOfRemAtTheEndOneByOne, 9999000)
        arrayManipulator.removeAtTheEndAtOnce()
        XCTAssertEqual(arrayManipulator.resOfRemAtTheEndAtOnce, 9999000)
    }

    func testPerformance() throws {
        measure {
            arrayManipulator.arrayCreating()
            arrayManipulator.insertAtTheBeginningOneByOne()
            arrayManipulator.insertAtTheBeginningAtOnce()
            arrayManipulator.insertInTheMiddleOneByOne()
            arrayManipulator.insertInTheMiddleAtOnce()
            arrayManipulator.appendToTheEndOneByOne()
            arrayManipulator.appendToTheEndAtOnce()
            arrayManipulator.removeAtTheBeginningOneByOne()
            arrayManipulator.removeAtTheBeginningAtOnce()
        }
    }

}

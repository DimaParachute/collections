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
        XCTAssertEqual(arrayManipulator.resultOfInsertionAtTheBeginningOneByOne, 10001000)
        arrayManipulator.insertAtTheBeginningAtOnce()
        XCTAssertEqual(arrayManipulator.resultOfInsertionAtTheBeginningAtOnce, 10001000)
        arrayManipulator.insertInTheMiddleOneByOne()
        XCTAssertEqual(arrayManipulator.resultOfInsertionInTheMiddleOneByOne, 10001000)
        arrayManipulator.insertInTheMiddleAtOnce()
        XCTAssertEqual(arrayManipulator.resultOfInsertionInTheMiddleAtOnce, 10001000)
        arrayManipulator.appendToTheEndOneByOne()
        XCTAssertEqual(arrayManipulator.resultOfAppearanceInTheEndOneByOne, 10001000)
        arrayManipulator.appendToTheEndAtOnce()
        XCTAssertEqual(arrayManipulator.resultOfAppearanceInTheEndAtOnce, 10001000)
        arrayManipulator.removeAtTheBeginningOneByOne()
        XCTAssertEqual(arrayManipulator.resultOfRemovingAtTheBeginningOneByOne, 9999000)
        arrayManipulator.removeAtTheBeginningAtOnce()
        XCTAssertEqual(arrayManipulator.resultOfRemovingAtTheBeginningAtOnce, 9999000)
        arrayManipulator.removeInTheMiddleOneByOne()
        XCTAssertEqual(arrayManipulator.resultOfRemovingInTheMiddleOneByOne, 9999000)
        arrayManipulator.removeInTheMiddleAtOnce()
        XCTAssertEqual(arrayManipulator.resultOfRemovingInTheMiddleAtOnce, 9999000)
        arrayManipulator.removeAtTheEndOneByOne()
        XCTAssertEqual(arrayManipulator.resultOfRemovingAtTheEndOneByOne, 9999000)
        arrayManipulator.removeAtTheEndAtOnce()
        XCTAssertEqual(arrayManipulator.resultOfRemovingAtTheEndAtOnce, 9999000)
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

//
//  collectionsTests.swift
//  collectionsTests
//
//  Created by Дмитрий Фетюхин on 08.12.2021.
//

import XCTest
@testable import collections

class CollectionsArrayTests: XCTestCase {

    var arrayManipulator = ArrayManipulator()
    
    override func setUpWithError() throws {
        arrayManipulator.arrayCreating()
    }

    func testArrayCreating() throws {
        arrayManipulator.arrayCreating()
    }
    
    func testInsertAtTheBeginningAtOnce() throws {
        let result = arrayManipulator.insertAtTheBeginningAtOnce()
        //XCTAssertEqual(result.count, 10001000)
    }

    func testPerformance() throws {
        measure {
            arrayManipulator.arrayCreating()
        }
    }

}

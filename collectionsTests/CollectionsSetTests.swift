//
//  CollectionsSetTests.swift
//  collectionsTests
//
//  Created by Дмитрий Фетюхин on 08.12.2021.
//

import XCTest
@testable import collections

class CollectionsSetTests: XCTestCase {
    
    private var setManipulator = SetManipulator()

    func testSetOptions() throws {
        setManipulator.firstSet = ["a", "b"]
        setManipulator.secondSet = ["b"]
        setManipulator.matchingLetters()
        XCTAssertEqual(setManipulator.resOfMatchingLetters, "b")
        setManipulator.notMatchingLetters()
        XCTAssertEqual(setManipulator.resOfNotMatchingLetters, "a")
        setManipulator.notMatchingFromFirstTextField()
        XCTAssertEqual(setManipulator.resOfNotMatchingFromFirstTF, "a")
    }

    func testPerformance() throws {
        setManipulator.firstSet = ["a", "b"]
        setManipulator.secondSet = ["b"]
        measure {
            setManipulator.matchingLetters()
            setManipulator.notMatchingLetters()
            setManipulator.notMatchingFromFirstTextField()
        }
    }

}

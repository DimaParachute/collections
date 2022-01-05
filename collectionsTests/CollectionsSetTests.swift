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
        XCTAssertEqual(setManipulator.resultOfMatchingLetters, "b")
        setManipulator.notMatchingLetters()
        XCTAssertEqual(setManipulator.resultOfNotMatchingLetters, "a")
        setManipulator.notMatchingFromFirstTextField()
        XCTAssertEqual(setManipulator.resultOfNotMatchingLettersFromFirstTextField, "a")
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

//
//  collectionsUITests.swift
//  collectionsUITests
//
//  Created by Дмитрий Фетюхин on 08.12.2021.
//

import XCTest

class CollectionsArrayUITests: XCTestCase {
    
    private let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testArray() throws {
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Array"]/*[[".cells.staticTexts[\"Array\"]",".staticTexts[\"Array\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Create Int array with 10_000_000 elements"]/*[[".buttons[\"Create Int array with 10_000_000 elements\"].staticTexts[\"Create Int array with 10_000_000 elements\"]",".staticTexts[\"Create Int array with 10_000_000 elements\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let verticalScrollBar2PagesCollectionView = app/*@START_MENU_TOKEN@*/.collectionViews.containing(.other, identifier:"Vertical scroll bar, 2 pages").element/*[[".collectionViews.containing(.other, identifier:\"Horizontal scroll bar, 1 page\").element",".collectionViews.containing(.other, identifier:\"Vertical scroll bar, 2 pages\").element"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        _ = XCTWaiter.wait(for: [expectation(description: "Wait for 10 seconds")], timeout: 10.0)
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Insert 1000 elements at the beginning of the array one-by-one."]/*[[".cells.staticTexts[\"Insert 1000 elements at the beginning of the array one-by-one.\"]",".staticTexts[\"Insert 1000 elements at the beginning of the array one-by-one.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Insert 1000 elements at the beginning of the array."]/*[[".cells.staticTexts[\"Insert 1000 elements at the beginning of the array.\"]",".staticTexts[\"Insert 1000 elements at the beginning of the array.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Insert 1000 elements in the middle of the array one-by-one."]/*[[".cells.staticTexts[\"Insert 1000 elements in the middle of the array one-by-one.\"]",".staticTexts[\"Insert 1000 elements in the middle of the array one-by-one.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Insert 1000 elements in the middle of the array."]/*[[".cells.staticTexts[\"Insert 1000 elements in the middle of the array.\"]",".staticTexts[\"Insert 1000 elements in the middle of the array.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Insert 1000 elements at the end of the array one-by-one."]/*[[".cells.staticTexts[\"Insert 1000 elements at the end of the array one-by-one.\"]",".staticTexts[\"Insert 1000 elements at the end of the array one-by-one.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Insert 1000 elements at the end of the array all at once."]/*[[".cells.staticTexts[\"Insert 1000 elements at the end of the array all at once.\"]",".staticTexts[\"Insert 1000 elements at the end of the array all at once.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        verticalScrollBar2PagesCollectionView.swipeUp()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Remove 1000 elements at the beginning of the array one-by-one."]/*[[".cells.staticTexts[\"Remove 1000 elements at the beginning of the array one-by-one.\"]",".staticTexts[\"Remove 1000 elements at the beginning of the array one-by-one.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Remove 1000 elements at the beginning of the array all at once."]/*[[".cells.staticTexts[\"Remove 1000 elements at the beginning of the array all at once.\"]",".staticTexts[\"Remove 1000 elements at the beginning of the array all at once.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Remove 1000 elements in the middle of the array one-by-one."]/*[[".cells.staticTexts[\"Remove 1000 elements in the middle of the array one-by-one.\"]",".staticTexts[\"Remove 1000 elements in the middle of the array one-by-one.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Remove 1000 elements in the middle of the array."]/*[[".cells.staticTexts[\"Remove 1000 elements in the middle of the array.\"]",".staticTexts[\"Remove 1000 elements in the middle of the array.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Remove 1000 elements at the end of the array one-by-one."]/*[[".cells.staticTexts[\"Remove 1000 elements at the end of the array one-by-one.\"]",".staticTexts[\"Remove 1000 elements at the end of the array one-by-one.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Remove 1000 elements at the end of the array."]/*[[".cells.staticTexts[\"Remove 1000 elements at the end of the array.\"]",".staticTexts[\"Remove 1000 elements at the end of the array.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertFalse(app.staticTexts["Insert 1000 elements at the beginning of the array one-by-one."].exists)
        XCTAssertFalse(app.staticTexts["Insert 1000 elements at the beginning of the array."].exists)
        XCTAssertFalse(app.staticTexts["Insert 1000 elements in the middle of the array one-by-one."].exists)
        XCTAssertFalse(app.staticTexts["Insert 1000 elements in the middle of the array."].exists)
        XCTAssertFalse(app.staticTexts["Insert 1000 elements at the end of the array one-by-one."].exists)
        XCTAssertFalse(app.staticTexts["Insert 1000 elements at the end of the array all at once."].exists)
        XCTAssertFalse(app.staticTexts["Remove 1000 elements at the end of the array one-by-one."].exists)
        XCTAssertFalse(app.staticTexts["Remove 1000 elements at the end of the array."].exists)
        XCTAssertFalse(app.staticTexts["Remove 1000 elements at the beginning of the array one-by-one."].exists)
        XCTAssertFalse(app.staticTexts["Remove 1000 elements at the beginning of the array all at once."].exists)
        XCTAssertFalse(app.staticTexts["Remove 1000 elements in the middle of the array one-by-one."].exists)
        XCTAssertFalse(app.staticTexts["Remove 1000 elements in the middle of the array."].exists)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

//
//  CollectionsDictionaryUITests.swift
//  collectionsUITests
//
//  Created by Дмитрий Фетюхин on 18.12.2021.
//

import XCTest

class CollectionsDictionaryUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testDictionary() throws {
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Dictionary"]/*[[".cells.staticTexts[\"Dictionary\"]",".staticTexts[\"Dictionary\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        _ = XCTWaiter.wait(for: [expectation(description: "Wait for 6 seconds")], timeout: 6.0)
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Find the first contact arr"]/*[[".cells.staticTexts[\"Find the first contact arr\"]",".staticTexts[\"Find the first contact arr\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Find the first contact dict"]/*[[".cells.staticTexts[\"Find the first contact dict\"]",".staticTexts[\"Find the first contact dict\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Find the last contact arr"]/*[[".cells.staticTexts[\"Find the last contact arr\"]",".staticTexts[\"Find the last contact arr\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Find the last contact dict"]/*[[".cells.staticTexts[\"Find the last contact dict\"]",".staticTexts[\"Find the last contact dict\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Search for a non-existing element arr"]/*[[".cells.staticTexts[\"Search for a non-existing element arr\"]",".staticTexts[\"Search for a non-existing element arr\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Search for a non-existing element dict"]/*[[".cells.staticTexts[\"Search for a non-existing element dict\"]",".staticTexts[\"Search for a non-existing element dict\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertFalse(app.staticTexts["Find the first contact arr"].exists)
        XCTAssertFalse(app.staticTexts["Find the first contact dict"].exists)
        XCTAssertFalse(app.staticTexts["Find the last contact arr"].exists)
        XCTAssertFalse(app.staticTexts["Find the last contact dict"].exists)
        XCTAssertFalse(app.staticTexts["Search for a non-existing element arr"].exists)
        XCTAssertFalse(app.staticTexts["Search for a non-existing element dict"].exists)
    }

}

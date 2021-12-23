//
//  CollectionsSetUITests.swift
//  collectionsUITests
//
//  Created by Дмитрий Фетюхин on 18.12.2021.
//

import XCTest

class CollectionsSetUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testSet() throws {
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Set"]/*[[".cells.staticTexts[\"Set\"]",".staticTexts[\"Set\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["firstTextField"].tap()
        app.textFields["firstTextField"].typeText("ab")
        app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["secondTextField"].tap()
        app.textFields["secondTextField"].typeText("b")
        app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["allMatchingButton"].tap()
        XCTAssertTrue(app.staticTexts["b"].exists)
        app.buttons["notMatchingButton"].tap()
        XCTAssertTrue(app.staticTexts["a"].exists)
        app.buttons["notMatchingFromFirstButton"].tap()
    }
}

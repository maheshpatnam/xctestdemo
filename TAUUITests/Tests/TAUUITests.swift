//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Mahesh Patnam on 28/10/2021.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: TAUUITestBase {
  

    func testPosiitiveExample() throws {
        app.staticTexts["welcomeMessage"].tap()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("amsterdam")
        app.staticTexts["welcomeMessage"].tap()
//        let enrolButton = app.buttons["Enroll"]
        if !app.buttons["Enroll"].isHittable {
             let coordinate: XCUICoordinate = app.buttons["Enroll"].coordinate(withNormalizedOffset: CGVector(dx:0.0, dy:0.0))
             coordinate.tap()
        }
        
        XCTAssert(app.staticTexts["Thanks for Joining!"].exists)
    
                
    }
    func testNegativeExample() throws {
        // UI tests must launch the application that they test.
        
        app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons[\"Enroll\"].staticTexts[\"Enroll\"]",".buttons[\"enrollButton\"].staticTexts[\"Enroll\"]",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.staticTexts["Please Enter City"].exists)
       
    }
}

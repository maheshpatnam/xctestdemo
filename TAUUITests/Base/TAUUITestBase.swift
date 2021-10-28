//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Mahesh Patnam on 28/10/2021.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI
class TAUUITestBase: XCTestCase{
    let app = XCUIApplication()
    let eyes = Eyes()
    override func setUp()  {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        eyes.apiKey = "o0zsC8QaGShkyRXKa0GDdVsGV1SrijrUfHjd4fK9qPw110"
    }

    override func tearDown()  {
        super.tearDown()
    }
    
    func XCTAyncAssert(_ element:XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist{
            XCTAssertTrue(element.exists)
        }
    }
}


//
//  TAUEyesTest.swift
//  TAUUITests
//
//  Created by Mahesh Patnam on 28/10/2021.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI
class TAUEyesTest:TAUUITestBase
{
    func testExample() {

        // Initialize the eyes SDK and set your private API key.
     

        do {
            // Start the test
            eyes.open(withApplicationName: "TAU", testName: "Live demo")

            defer {
                eyes.abortIfNotClosed()
            }

            // Visual validation.
            eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))
            XCUIApplication().buttons["enrollButton"].tap()
            eyes.checkWindow(withTag: "Please Entter City")

            // End visual UI testing.
           
            do{
                try  eyes.close()
            }
            catch{
                eyes.abortIfNotClosed()
            }
        }
    }
}

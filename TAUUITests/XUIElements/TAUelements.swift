//
//  TAUelements.swift
//  TAUUITests
//
//  Created by Mahesh Patnam on 28/10/2021.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

enum TAUScreen: String{
    case WelcomeMessage = "welcomeMessage"
    case EnrollButton = "enrollButton"
    case cityName = "city"
    case ThanksMessgae = "Thanks for Joining!"
    var element:XCUIElement{
        switch self{
        case .WelcomeMessage,.ThanksMessgae:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityName:
            return XCUIApplication().textFields[self.rawValue]
        case .EnrollButton:
            return XCUIApplication().buttons[self.rawValue]
        }
    }

}

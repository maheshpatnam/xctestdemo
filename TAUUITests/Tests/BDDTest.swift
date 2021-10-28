//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Mahesh Patnam on 28/10/2021.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest



class BDDTest:TAUUITestBase{
    func testThankyouMessageIInBdd() throws {
        givenAppIsReady()
        WhenIEnter(city:"London")
        WhenIEnrolled()
        ThenIshouldSeeThankYouMessage()
    }
}

extension UIReturnKeyType {
    public var title: String {
        switch self {
        case .next:
            return "Next"
        case .default:
            return "return"
        case .continue:
            return "Continue"
        case .done:
            return "Done"
        case .emergencyCall:
            return "Emergency call"
        case .go:
            return "Go"
        case .join:
            return "Join"
        case .route:
            return "Route"
        case .yahoo, .google, .search:
            return "Search"
        case .send:
            return "Send"
        }
    }
}

extension XCUIElement {
    func tap(button: UIReturnKeyType) {
        XCUIApplication().keyboards.buttons[button.title].tap()
    }
}
//


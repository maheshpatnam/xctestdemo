//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Mahesh Patnam on 28/10/2021.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TAUUITestBase{
    func givenAppIsReady(){
        XCTContext.runActivity(named: "given App Is Ready"){_ in
            XCTAyncAssert(TAUScreen.EnrollButton.element)
            print(UIDevice.current.userInterfaceIdiom)
        }
        
    }
    func WhenIEnter(city: String){
        XCTContext.runActivity(named: "When I Enter"){_ in
            let cityName = TAUScreen.cityName.element
            cityName.tap()
            cityName.typeText("amsterdam")
            cityName.tap(button: .send)
            
        }
    }
    func WhenIEnrolled(){
        XCTContext.runActivity(named: "When I Enrolled"){_ in
            TAUScreen.EnrollButton.element.tap()
        }
       
    }
    func ThenIshouldSeeThankYouMessage(){
        XCTContext.runActivity(named: "Then Ishould See ThankYou Message"){_ in
            XCTAyncAssert(TAUScreen.ThanksMessgae.element)
        }
       
    }
    
}


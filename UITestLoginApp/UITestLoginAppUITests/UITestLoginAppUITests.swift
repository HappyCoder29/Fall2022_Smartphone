//
//  UITestLoginAppUITests.swift
//  UITestLoginAppUITests
//
//  Created by Drillmaps on 03/12/22.
//

import XCTest

final class UITestLoginAppUITests: XCTestCase {


    func testLoginSuccess() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let email = app.textFields["Email"]
        XCTAssertTrue(email.exists)
        email.tap()
        email.typeText("ashish@test.com")
        
        let password = app.secureTextFields["Password"]
        XCTAssertTrue(password.exists)
        password.tap()
        password.typeText("password")
        
        let loginButton = app.buttons["Login"]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
        
        
        
        let loggedInLabel = app.staticTexts["Dashboard"]
        XCTAssertTrue(loggedInLabel.exists)
        
    }
    
    func testLoginFailure() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let email = app.textFields["Email"]
        XCTAssertTrue(email.exists)
        email.tap()
        email.typeText("ashish@test1.com")
        
        let password = app.secureTextFields["Password"]
        XCTAssertTrue(password.exists)
        password.tap()
        password.typeText("password")
        
        let loginButton = app.buttons["Login"]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
        
        let loggedInLabel = app.staticTexts["Dashboard"]
        XCTAssertFalse(loggedInLabel.exists)
    }

}

//
//  test_app_liveUITests.swift
//  test_app_liveUITests
//
//  Created by Ian Julian Estrada Castro on 05/11/24.
//

import XCTest

final class test_app_liveUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    @MainActor
    func testContentViewInteraction() {
        let app = XCUIApplication()
        app.launch()
        
        // Localizar el textfield e ingresar el texto
        let nameTextField = app.textFields["nameTextField"]
        XCTAssertTrue(nameTextField.exists, "The name text field should exist")
        nameTextField.tap()
        nameTextField.typeText("Alice")
        
        // Localizar boton y presionarlo
        let submitButton = app.buttons["submitButton"]
        XCTAssertTrue(submitButton.exists, "The submit button should exist")
        submitButton.tap()
        
        // Verificar el texto en la vista de texto
        let welcomeText = app.staticTexts["welcomeText"]
        XCTAssertTrue(welcomeText.exists, "The welcome text should exist")
        welcomeText.staticTexts("Welcome: ")
    }
}

//
//  User_Unit_Test.swift
//  test_app_liveTests
//
//  Created by Ian Julian Estrada Castro on 05/11/24.
//

import XCTest
@testable import test_app_live

final class User_Unit_Test: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // Iniciar la funcion
    func testExample() throws {
        let user = User(name: "Ian", age: 24) // Tener un actor
        // Verificar que si sean los parametros
        XCTAssertEqual(user.name, "Ian")
        XCTAssertEqual(user.age, 24)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

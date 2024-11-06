//
//  test_appTest.swift
//  test_app_liveTests
//
//  Created by Ian Julian Estrada Castro on 05/11/24.
//

import Testing
import XCTest
@testable import test_app_live

struct test_appTest {

    @Test func isAdultTest() async throws {
        let user = User(name: "Ian", age: 21)
        XCTAssertTrue(user.isAdult())
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }
}

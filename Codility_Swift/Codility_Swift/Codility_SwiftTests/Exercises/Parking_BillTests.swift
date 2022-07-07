//
//  Parking_BillTests.swift
//  Codility_SwiftTests
//
//  Created by Yunju Yang on 2022/07/06.
//

import XCTest
@testable import Codility_Swift

class Parking_BillTests: XCTestCase {

    private struct TestCase {
        let E: String
        let L: String
        let result: Int
    }
    
    private var sut: Parking_Bill!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Parking_Bill()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(E: "10:00", L: "13:21", result: 17)
        // when
        let result = sut.solution(E: testCase.E, L: testCase.L)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(E: "09:42", L: "11:42", result: 9)
        // when
        let result = sut.solution(E: testCase.E, L: testCase.L)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

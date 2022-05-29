//
//  Solve_Me_FirstTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Solve_Me_FirstTests: XCTestCase {
    
    private struct TestCase {
        let a: Int
        let b: Int
        let result: Int
    }
    
    private var sut: Solve_Me_First!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Solve_Me_First()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(a: 2, b: 3, result: 5)
        // when
        let result = sut.solution(a: testCase.a, b: testCase.b)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

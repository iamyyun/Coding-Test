//
//  Apple_and_OrangeTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/03.
//

import XCTest
@testable import HackerRank_Swift

class Apple_and_OrangeTests: XCTestCase {

    private struct TestCase {
        let s: Int
        let t: Int
        let a: Int
        let b: Int
        let apples: [Int]
        let oranges: [Int]
        let result: [Int]
    }
    
    private var sut: Apple_and_Orange!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Apple_and_Orange()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4], result: [1,2])
        // when
        let result = sut.solution(s: testCase.s, t: testCase.t, a: testCase.a, b: testCase.b, apples: testCase.apples, oranges: testCase.oranges)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(s: 7, t: 11, a: 5, b: 15, apples: [-2,2,1], oranges: [5,-6], result: [1,1])
        // when
        let result = sut.solution(s: testCase.s, t: testCase.t, a: testCase.a, b: testCase.b, apples: testCase.apples, oranges: testCase.oranges)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

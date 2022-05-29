//
//  위장Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 위장Tests: XCTestCase {

    private struct TestCase {
        let clothes: [[String]]
        let result: Int
    }
    
    private var sut: 위장!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 위장()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(clothes: [["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]], result: 5)
        // when
        let result = sut.solution(testCase.clothes)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(clothes: [["crowmask", "face"], ["bluesunglasses", "face"], ["smoky_makeup", "face"]], result: 3)
        let result = sut.solution(testCase.clothes)
        XCTAssertEqual(result, testCase.result)
    }

}

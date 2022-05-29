//
//  다리를_지나는_트럭Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 다리를_지나는_트럭Tests: XCTestCase {

    private struct TestCase {
        let bridge_length: Int
        let weight: Int
        let truck_weights: [Int]
        let result: Int
    }
    
    private var sut: 다리를_지나는_트럭!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 다리를_지나는_트럭()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(bridge_length: 2, weight: 10, truck_weights: [7,4,5,6], result: 8)
        // when
        let result = sut.solution(testCase.bridge_length, testCase.weight, testCase.truck_weights)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(bridge_length: 100, weight: 100, truck_weights: [10], result: 101)
        let result = sut.solution(testCase.bridge_length, testCase.weight, testCase.truck_weights)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(bridge_length: 100, weight: 100, truck_weights: [10,10,10,10,10,10,10,10,10,10], result: 110)
        let result = sut.solution(testCase.bridge_length, testCase.weight, testCase.truck_weights)
        XCTAssertEqual(result, testCase.result)
    }

}

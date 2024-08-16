//
//  Can_Place_FlowersTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 4/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Can_Place_FlowersTests: XCTestCase {
    
    private struct TestCase {
        let flowerbed: [Int]
        let n: Int
        let result: Bool
    }
    
    private var sut: Can_Place_Flowers!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Can_Place_Flowers()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(flowerbed: [1,0,0,0,1], n: 1, result: true)
        let result = sut.solution(testCase.flowerbed, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(flowerbed: [1,0,0,0,1], n: 2, result: false)
        let result = sut.solution(testCase.flowerbed, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(flowerbed: [0,0,0,1], n: 1, result: true)
        let result = sut.solution(testCase.flowerbed, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }
}

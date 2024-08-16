//
//  Single_NumberTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 12/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Single_NumberTests: XCTestCase {

    private struct TestCase {
        var nums: [Int]
        let result: Int
    }
    
    private var sut: Single_Number!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Single_Number()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(nums: [2,2,1], result: 1)
        let result = sut.solution(testCase.nums)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(nums: [4,1,2,1,2], result: 4)
        let result = sut.solution(testCase.nums)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(nums: [1], result: 1)
        let result = sut.solution(testCase.nums)
        XCTAssertEqual(result, testCase.result)
    }

}

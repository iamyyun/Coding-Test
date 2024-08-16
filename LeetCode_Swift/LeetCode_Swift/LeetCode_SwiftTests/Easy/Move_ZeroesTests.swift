//
//  Move_ZeroesTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 5/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Move_ZeroesTests: XCTestCase {

    private struct TestCase {
        var nums: [Int]
        let result: [Int]
    }
    
    private var sut: Move_Zeroes!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Move_Zeroes()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        var nums = [0,1,0,3,12]
        testCase = TestCase(nums: nums, result: [1,3,12,0,0])
        sut.solution(&nums)
        XCTAssertEqual(nums, testCase.result)
    }

    func testCase2() {
        var nums = [0]
        testCase = TestCase(nums: nums, result: [0])
        sut.solution(&nums)
        XCTAssertEqual(nums, testCase.result)
    }

}

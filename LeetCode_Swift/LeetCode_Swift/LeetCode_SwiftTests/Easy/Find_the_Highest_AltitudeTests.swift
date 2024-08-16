//
//  Find_the_Highest_AltitudeTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 5/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Find_the_Highest_AltitudeTests: XCTestCase {

    private struct TestCase {
        var gain: [Int]
        let result: Int
    }
    
    private var sut: Find_the_Highest_Altitude!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Find_the_Highest_Altitude()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(gain: [-5,1,5,0,-7], result: 1)
        let result = sut.solution(testCase.gain)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(gain: [-4,-3,-2,-1,4,3,2], result: 0)
        let result = sut.solution(testCase.gain)
        XCTAssertEqual(result, testCase.result)
    }

}

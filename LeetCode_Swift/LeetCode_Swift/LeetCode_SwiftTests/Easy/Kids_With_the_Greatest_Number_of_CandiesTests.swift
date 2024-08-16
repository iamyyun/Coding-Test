//
//  Kids_With_the_Greatest_Number_of_CandiesTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 14/7/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Kids_With_the_Greatest_Number_of_CandiesTests: XCTestCase {
    
    private struct TestCase {
        let candies: [Int]
        let extraCandies: Int
        let result: [Bool]
    }
    
    private var sut: Kids_With_the_Greatest_Number_of_Candies!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Kids_With_the_Greatest_Number_of_Candies()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(candies: [2,3,5,1,3], extraCandies: 3, result: [true,true,true,false,true])
        let result = sut.solution(testCase.candies, testCase.extraCandies)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(candies: [4,2,1,1,2], extraCandies: 1, result: [true,false,false,false,false])
        let result = sut.solution(testCase.candies, testCase.extraCandies)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(candies: [12,1,12], extraCandies: 10, result: [true,false,true])
        let result = sut.solution(testCase.candies, testCase.extraCandies)
        XCTAssertEqual(result, testCase.result)
    }

}

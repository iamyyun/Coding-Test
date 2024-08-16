//
//  Unique_Number_of_OccurrencesTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 8/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Unique_Number_of_OccurrencesTests: XCTestCase {

    private struct TestCase {
        var arr: [Int]
        let result: Bool
    }
    
    private var sut: Unique_Number_of_Occurrences!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Unique_Number_of_Occurrences()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(arr: [1,2,2,1,1,3], result: true)
        let result = sut.solution(testCase.arr)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(arr: [1,2], result: false)
        let result = sut.solution(testCase.arr)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(arr: [-3,0,1,-3,1,1,1,-3,10,0], result: true)
        let result = sut.solution(testCase.arr)
        XCTAssertEqual(result, testCase.result)
    }
}

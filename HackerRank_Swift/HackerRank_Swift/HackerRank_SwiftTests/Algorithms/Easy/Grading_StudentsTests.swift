//
//  Grading_StudentsTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Grading_StudentsTests: XCTestCase {

    private struct TestCase {
        let grades: [Int]
        let result: [Int]
    }
    
    private var sut: Grading_Students!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Grading_Students()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(grades: [73,67,38,33], result: [75,67,40,33])
        // when
        let result = sut.solution(grades: testCase.grades)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

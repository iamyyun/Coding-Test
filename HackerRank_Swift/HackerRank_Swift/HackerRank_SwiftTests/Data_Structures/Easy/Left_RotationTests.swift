//
//  Left_RotationTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/03.
//

import XCTest
@testable import HackerRank_Swift

class Left_RotationTests: XCTestCase {

    private struct TestCase {
        let d: Int
        let arr: [Int]
        let result: [Int]
    }

    private var sut: Left_Rotation!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Left_Rotation()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(d: 4, arr: [1,2,3,4,5], result: [5,1,2,3,4])
        // when
        let result = sut.solution(d: testCase.d, arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        // given
        testCase = TestCase(d: 10, arr: [41,73,89,7,10,1,59,58,84,77,77,97,58,1,86,58,26,10,86,51], result: [77,97,58,1,86,58,26,10,86,51,41,73,89,7,10,1,59,58,84,77])
        // when
        let result = sut.solution(d: testCase.d, arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

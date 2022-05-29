//
//  A_Very_Big_SumTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class A_Very_Big_SumTests: XCTestCase {

    private struct TestCase {
        let ar: [Int]
        let result: Int
    }
    
    private var sut: A_Very_Big_Sum!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = A_Very_Big_Sum()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(ar: [1000000001,1000000002,1000000003,1000000004,1000000005], result: 5000000015)
        // when
        let result = sut.solution(ar: testCase.ar)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

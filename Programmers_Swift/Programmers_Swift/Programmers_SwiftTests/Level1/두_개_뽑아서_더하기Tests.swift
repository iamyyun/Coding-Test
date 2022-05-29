//
//  두_개_뽑아서_더하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 두_개_뽑아서_더하기Tests: XCTestCase {

    private struct TestCase {
        let numbers: [Int]
        let result: [Int]
    }
    
    private var sut: 두_개_뽑아서_더하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 두_개_뽑아서_더하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(numbers: [5,0,2,7], result: [2,5,7,9,12])
        let result = sut.solution(testCase.numbers)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(numbers: [2,1,3,4,1], result: [2,3,4,5,6,7])
        let result = sut.solution(testCase.numbers)
        XCTAssertEqual(result, testCase.result)
    }
}

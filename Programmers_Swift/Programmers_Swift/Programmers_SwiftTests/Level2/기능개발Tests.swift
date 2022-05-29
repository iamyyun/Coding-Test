//
//  기능개발Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 기능개발Tests: XCTestCase {

    private struct TestCase {
        let progresses: [Int]
        let sppeds: [Int]
        let result: [Int]
    }
    
    private var sut: 기능개발!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 기능개발()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(progresses: [93,30,55], sppeds: [1,30,5], result: [2,1])
        // when
        let result = sut.solution(testCase.progresses, testCase.sppeds)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(progresses: [95,90,99,99,80,99], sppeds: [1,1,1,1,1,1], result: [1,3,2])
        let result = sut.solution(testCase.progresses, testCase.sppeds)
        XCTAssertEqual(result, testCase.result)
    }

}

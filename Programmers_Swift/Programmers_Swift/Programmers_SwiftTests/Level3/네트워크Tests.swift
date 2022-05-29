//
//  네트워크Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 네트워크Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let computers: [[Int]]
        let result: Int
    }
    
    private var sut: 네트워크!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 네트워크()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 3, computers: [[1,1,0],[1,1,0],[0,0,1]], result: 2)
        // when
        let result = sut.solution(testCase.n, testCase.computers)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 3, computers: [[1,1,0],[1,1,1],[0,1,1]], result: 1)
        let result = sut.solution(testCase.n, testCase.computers)
        XCTAssertEqual(result, testCase.result)
    }

}

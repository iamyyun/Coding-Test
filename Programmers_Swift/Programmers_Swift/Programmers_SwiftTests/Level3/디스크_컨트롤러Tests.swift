//
//  디스크_컨트롤러Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 디스크_컨트롤러Tests: XCTestCase {

    private struct TestCase {
        let jobs: [[Int]]
        let result: Int
    }
    
    private var sut: 디스크_컨트롤러!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 디스크_컨트롤러()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(jobs: [[0,3],[1,9],[2,6]], result: 9)
        // when
        let result = sut.solution(testCase.jobs)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

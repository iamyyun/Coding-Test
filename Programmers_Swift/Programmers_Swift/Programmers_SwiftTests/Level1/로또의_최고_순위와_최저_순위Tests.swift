//
//  로또의_최고_순위와_최저_순위Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/13.
//

import XCTest
@testable import Programmers_Swift

class 로또의_최고_순위와_최저_순위Tests: XCTestCase {

    private struct TestCase {
        let lottos: [Int]
        let win_nums: [Int]
        let result: [Int]
    }
    
    private var sut: 로또의_최고_순위와_최저_순위!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 로또의_최고_순위와_최저_순위()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(lottos: [44, 1, 0, 0, 31, 25], win_nums: [31, 10, 45, 1, 6, 19], result: [3, 5])
        // when
        let result = sut.solution(testCase.lottos, testCase.win_nums)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(lottos: [0, 0, 0, 0, 0, 0], win_nums: [38, 19, 20, 40, 15, 25], result: [1, 6])
        let result = sut.solution(testCase.lottos, testCase.win_nums)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(lottos: [45, 4, 35, 20, 3, 9], win_nums: [20, 9, 3, 45, 4, 35], result: [1, 1])
        let result = sut.solution(testCase.lottos, testCase.win_nums)
        XCTAssertEqual(result, testCase.result)
    }

}

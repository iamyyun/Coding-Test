//
//  베스트앨범Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 베스트앨범Tests: XCTestCase {

    private struct TestCase {
        let genres: [String]
        let plays: [Int]
        let result: [Int]
    }
    
    private var sut: 베스트앨범!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 베스트앨범()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(genres: ["classic", "pop", "classic", "classic", "pop"], plays: [500, 600, 150, 800, 2500], result: [4, 1, 3, 0])
        // when
        let result = sut.solution(testCase.genres, testCase.plays)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

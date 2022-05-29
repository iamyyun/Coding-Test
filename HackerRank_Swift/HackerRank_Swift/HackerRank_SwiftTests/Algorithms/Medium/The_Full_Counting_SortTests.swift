//
//  The_Full_Counting_SortTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/27.
//

import XCTest
@testable import HackerRank_Swift

class The_Full_Counting_SortTests: XCTestCase {

    private struct TestCase {
        let arr: [(Int, String)]
        let result: String
    }
    
    private var sut: The_Full_Counting_Sort!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = The_Full_Counting_Sort()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [(0, "-"), (6, "-"), (0, "-"), (6, "-"), (4, "-"), (0, "-"), (6, "-"), (0, "-"), (6, "-"), (0, "-"), (4, "that"), (3, "be"), (0, "to"), (1, "be"), (5, "question"), (1, "or"), (2, "not"), (4, "is"), (2, "to"), (4, "the")], result: "- - - - - to be or not to be - that is the question - - - - ")
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

//
//  Sparse_ArraysTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/04.
//

import XCTest
@testable import HackerRank_Swift

class Sparse_ArraysTests: XCTestCase {

    private struct TestCase {
        let strings: [String]
        let queries: [String]
        let result: [Int]
    }
    
    private var sut: Sparse_Arrays!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Sparse_Arrays()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(strings: ["ab","ab","abc"], queries: ["ab","abc","bc"], result: [2,1,0])
        // when
        let result = sut.solution(strings: testCase.strings, queries: testCase.queries)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(strings: ["aba","baba","aba","xzxb"], queries: ["aba","xzxb","ab"], result: [2,1,0])
        // when
        let result = sut.solution(strings: testCase.strings, queries: testCase.queries)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(strings: ["def","de","fgh"], queries: ["de","lmn","fgh"], result: [1,0,1])
        // when
        let result = sut.solution(strings: testCase.strings, queries: testCase.queries)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

//
//  Big_SortingTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/26.
//

import XCTest
@testable import HackerRank_Swift

class Big_SortingTests: XCTestCase {

    private struct TestCase {
        let unsorted: [String]
        let result: [String]
    }
    
    private var sut: Big_Sorting!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Big_Sorting()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(unsorted: ["1","200","150","3"], result: ["1","3","150","200"])
        // when
        let result = sut.solution(unsorted: testCase.unsorted)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(unsorted: ["31415926535897932384626433832795","1","3","10","3","5"], result: ["1","3","3","5","10","31415926535897932384626433832795"])
        // when
        let result = sut.solution(unsorted: testCase.unsorted)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(unsorted: ["1","2","100","12303479849857341718340192371","3084193741082937","3084193741082938","111","200"], result: ["1","2","100","111","200","3084193741082937","3084193741082938","12303479849857341718340192371"])
        // when
        let result = sut.solution(unsorted: testCase.unsorted)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

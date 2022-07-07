//
//  ArrListLenTests.swift
//  Codility_SwiftTests
//
//  Created by Yunju Yang on 2022/07/06.
//

import XCTest
@testable import Codility_Swift

class ArrListLenTests: XCTestCase {

    private struct TestCase {
        let A: [Int]
        let result: Int
    }
    
    private var sut: ArrListLen!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ArrListLen()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(A: [1,4,-1,3,2], result: 4)
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

//
//  주차_요금_계산Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class 주차_요금_계산Tests: XCTestCase {

    private struct TestCase {
        let fees: [Int]
        let records: [String]
        let result: [Int]
    }
    
    private var sut: 주차_요금_계산!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 주차_요금_계산()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(fees: [180, 5000, 10, 600], records: ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"], result: [14600, 34400, 5000])
        // when
        let result = sut.solution(testCase.fees, testCase.records)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(fees: [120, 0, 60, 591], records: ["16:00 3961 IN","16:00 0202 IN","18:00 3961 OUT","18:00 0202 OUT","23:58 3961 IN"], result: [0, 591])
        let result = sut.solution(testCase.fees, testCase.records)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(fees: [1, 461, 1, 10], records: ["00:00 1234 IN"], result: [14841])
        let result = sut.solution(testCase.fees, testCase.records)
        XCTAssertEqual(result, testCase.result)
    }

}

//
//  여행경로Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 여행경로Tests: XCTestCase {

    private struct TestCase {
        let tickets: [[String]]
        let result: [String]
    }
    
    private var sut: 여행경로!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 여행경로()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(tickets: [["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]], result: ["ICN", "JFK", "HND", "IAD"])
        // when
        let result = sut.solution(testCase.tickets)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(tickets: [["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]], result: ["ICN", "ATL", "ICN", "SFO", "ATL", "SFO"])
        let result = sut.solution(testCase.tickets)
        XCTAssertEqual(result, testCase.result)
    }

}

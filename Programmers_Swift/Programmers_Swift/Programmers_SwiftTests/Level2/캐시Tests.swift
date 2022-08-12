//
//  캐시Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class 캐시Tests: XCTestCase {

    private struct TestCase {
        let cacheSize: Int
        let cities: [String]
        let result: Int
    }
    
    private var sut: 캐시!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 캐시()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(cacheSize: 3, cities: ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"], result: 50)
        // when
        let result = sut.solution(testCase.cacheSize, testCase.cities)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(cacheSize: 3, cities: ["Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"], result: 21)
        let result = sut.solution(testCase.cacheSize, testCase.cities)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(cacheSize: 2, cities: ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"], result: 60)
        let result = sut.solution(testCase.cacheSize, testCase.cities)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        testCase = TestCase(cacheSize: 5, cities: ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"], result: 52)
        let result = sut.solution(testCase.cacheSize, testCase.cities)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase5() {
        testCase = TestCase(cacheSize: 2, cities: ["Jeju", "Pangyo", "NewYork", "newyork"], result: 16)
        let result = sut.solution(testCase.cacheSize, testCase.cities)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase6() {
        testCase = TestCase(cacheSize: 0, cities: ["Jeju", "Pangyo", "Seoul", "NewYork", "LA"], result: 25)
        let result = sut.solution(testCase.cacheSize, testCase.cities)
        XCTAssertEqual(result, testCase.result)
    }

}

//
//  신고_결과_받기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/12.
//

import XCTest
@testable import Programmers_Swift

class 신고_결과_받기Tests: XCTestCase {

    private struct TestCase {
        let id_list: [String]
        let report: [String]
        let k: Int
        let result: [Int]
    }
    
    private var sut: 신고_결과_받기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 신고_결과_받기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(id_list: ["muzi", "frodo", "apeach", "neo"], report: ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], k: 2, result: [2,1,1,0])
        // when
        let result = sut.solution(testCase.id_list, testCase.report, testCase.k)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(id_list: ["con", "ryan"], report: ["ryan con", "ryan con", "ryan con", "ryan con"], k: 3, result: [0,0])
        let result = sut.solution(testCase.id_list, testCase.report, testCase.k)
        XCTAssertEqual(result, testCase.result)
    }

}

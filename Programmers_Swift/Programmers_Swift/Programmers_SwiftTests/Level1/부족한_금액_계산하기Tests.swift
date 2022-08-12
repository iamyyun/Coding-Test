//
//  부족한_금액_계산하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 부족한_금액_계산하기Tests: XCTestCase {

    private struct TestCase {
        let price: Int
        let money: Int
        let count: Int
        let result: Int64
    }
    
    private var sut: 부족한_금액_계산하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 부족한_금액_계산하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(price: 3, money: 20, count: 4, result: 10)
        // when
        let result = sut.solution(testCase.price, testCase.money, testCase.count)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

//
//  K번째수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class K번째수Tests: XCTestCase {

    private struct TestCase {
        let array: [Int]
        let commands: [[Int]]
        let result: [Int]
    }
    
    private var sut: K번째수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = K번째수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(array: [1,5,2,6,3,7,4], commands: [[2,5,3],[4,4,1],[1,7,3]], result: [5,6,3])
        let result = sut.solution(testCase.array, testCase.commands)
        XCTAssertEqual(result, testCase.result)
    }

}

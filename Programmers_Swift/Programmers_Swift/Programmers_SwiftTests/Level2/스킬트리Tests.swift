//
//  스킬트리Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 스킬트리Tests: XCTestCase {

    private struct TestCase {
        let skill: String
        let skill_trees: [String]
        let result: Int
    }
    
    private var sut: 스킬트리!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 스킬트리()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(skill: "CBD", skill_trees: ["BACDE", "CBADF", "AECB", "BDA"], result: 2)
        // when
        let result = sut.solution(testCase.skill, testCase.skill_trees)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

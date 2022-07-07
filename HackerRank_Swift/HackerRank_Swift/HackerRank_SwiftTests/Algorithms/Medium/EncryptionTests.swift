//
//  EncryptionTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/04.
//

import XCTest
@testable import HackerRank_Swift

class EncryptionTests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: Encryption!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Encryption()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "if man was meant to stay on the ground god would have given us roots", result: "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(s: "have a nice day", result: "hae and via ecy")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(s: "feed the dog", result: "fto ehg ee dd")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        // given
        testCase = TestCase(s: "chillout", result: "clu hlt io")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

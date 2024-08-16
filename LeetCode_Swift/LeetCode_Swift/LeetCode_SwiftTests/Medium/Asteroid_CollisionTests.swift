//
//  Asteroid_CollisionTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 12/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Asteroid_CollisionTests: XCTestCase {

    private struct TestCase {
        var asteroids: [Int]
        let result: [Int]
    }
    
    private var sut: Asteroid_Collision!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Asteroid_Collision()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(asteroids: [5,10,-5], result: [5,10])
        let result = sut.solution(testCase.asteroids)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(asteroids: [8,-8], result: [])
        let result = sut.solution(testCase.asteroids)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(asteroids: [10,2,-5], result: [10])
        let result = sut.solution(testCase.asteroids)
        XCTAssertEqual(result, testCase.result)
    }

}

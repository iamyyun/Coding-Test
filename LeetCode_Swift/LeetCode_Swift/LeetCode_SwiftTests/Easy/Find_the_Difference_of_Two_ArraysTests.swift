//
//  Find_the_Difference_of_Two_ArraysTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 8/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Find_the_Difference_of_Two_ArraysTests: XCTestCase {

    private struct TestCase {
        var nums1: [Int]
        var nums2: [Int]
        let result: [[Int]]
    }
    
    private var sut: Find_the_Difference_of_Two_Arrays!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Find_the_Difference_of_Two_Arrays()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(nums1: [1,2,3], nums2: [2,4,6], result: [[1,3],[4,6]])
        let result = sut.solution(testCase.nums1, testCase.nums2)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(nums1: [1,2,3,3], nums2: [1,1,2,2], result: [[3],[]])
        let result = sut.solution(testCase.nums1, testCase.nums2)
        XCTAssertEqual(result, testCase.result)
    }

}

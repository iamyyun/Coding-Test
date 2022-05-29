//
//  Sherlock_and_the_Valid_StringTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/27.
//

import XCTest
@testable import HackerRank_Swift

class Sherlock_and_the_Valid_StringTests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: Sherlock_and_the_Valid_String!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Sherlock_and_the_Valid_String()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "aabbcd", result: "NO")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(s: "aabbccddeefghi", result: "NO")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(s: "abcdefghhgfedecba", result: "YES")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        // given
        testCase = TestCase(s: "ibfdgaeadiaefgbhbdghhhbgdfgeiccbiehhfcggchgghadhdhagfbahhddgghbdehidbibaeaagaeeigffcebfbaieggabcfbiiedcabfihchdfabifahcbhagccbdfifhghcadfiadeeaheeddddiecaicbgigccageicehfdhdgafaddhffadigfhhcaedcedecafeacbdacgfgfeeibgaiffdehigebhhehiaahfidibccdcdagifgaihacihadecgifihbebffebdfbchbgigeccahgihbcbcaggebaaafgfedbfgagfediddghdgbgehhhifhgcedechahidcbchebheihaadbbbiaiccededchdagfhccfdefigfibifabeiaccghcegfbcghaefifbachebaacbhbfgfddeceababbacgffbagidebeadfihaefefegbghgddbbgddeehgfbhafbccidebgehifafgbghafacgfdccgifdcbbbidfifhdaibgigebigaedeaaiadegfefbhacgddhchgcbgcaeaieiegiffchbgbebgbehbbfcebciiagacaiechdigbgbghefcahgbhfibhedaeeiffebdiabcifgccdefabccdghehfibfiifdaicfedagahhdcbhbicdgibgcedieihcichadgchgbdcdagaihebbabhibcihicadgadfcihdheefbhffiageddhgahaidfdhhdbgciiaciegchiiebfbcbhaeagccfhbfhaddagnfieihghfbaggiffbbfbecgaiiidccdceadbbdfgigibgcgchafccdchgifdeieicbaididhfcfdedbhaadedfageigfdehgcdaecaebebebfcieaecfagfdieaefdiedbcadchabhebgehiidfcgahcdhcdhgchhiiheffiifeegcfdgbdeffhgeghdfhbfbifgidcafbfcd", result: "YES")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}

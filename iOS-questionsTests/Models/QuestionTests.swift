//
//  QuestionTests.swift
//  iOS-questionsTests
//
//  Created by David Anglin on 10/28/20.
//

@testable import iOS_questions
import XCTest

class QuestionTests: XCTestCase {
    
    var sut: Question!

    override func setUp() {
        super.setUp()
        sut = Question
            .stub(withId: 1)
            .setting(\.question, to: "What is a view?")
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_question_isDecodable() {
        XCTAssertTrue((sut as Any) is Decodable)
    }
    
    func test_question_isEquatable() {
        XCTAssertEqual(sut, sut)
    }
    
    func test_question_id() {
        XCTAssertEqual(sut.id, 1)
    }

    func test_question_value() {
        XCTAssertEqual(sut.question, "What is a view?")
    }
}

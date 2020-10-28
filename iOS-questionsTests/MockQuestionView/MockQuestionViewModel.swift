//
//  MockQuestionViewModelTests.swift
//  iOS-questionsTests
//
//  Created by David Anglin on 10/28/20.
//

@testable import iOS_questions
import XCTest

class MockQuestionViewModelTests: XCTestCase {
    
    var sut: MockQuestionsViewModel!

    override func setUp() {
        super.setUp()
        sut = MockQuestionsViewModel()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initiated_viewModel() {
        XCTAssertNotNil(sut)
    }
    
    func test_viewModel_isMockQuestionsVMContract() {
        XCTAssertNotNil(sut as MockQuestionsVMContract)
    }
    
    func test_settingQuestions() {
        let questions = Question.stubData
        sut.questions = Question.stubData
        XCTAssertEqual(sut.questions, questions)
    }
    
    func test_questionsUpdated() {
        let updateExpectation = expectation(description: "Questions Updated")
        let questions = Question.stubData
        
        sut.questionsUpdated = updateExpectation.fulfill
        
        sut.questions = questions
        waitForExpectations(timeout: 0.2)
    }
}

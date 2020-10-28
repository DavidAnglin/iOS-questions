//
//  MockQuestionsViewControllerTests.swift
//  iOS-questionsTests
//
//  Created by David Anglin on 10/28/20.
//

@testable import iOS_questions
import XCTest

class MockQuestionsViewControllerTests: XCTestCase {
    
    var sut: MockQuestionsTableViewController!

    override func setUp() {
        super.setUp()
        let viewModel = MockQuestionsViewModel()
        sut = MockQuestionsTableViewController(viewModel: viewModel)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initialized_withViewModel() {
        XCTAssertNotNil(sut.viewModel)
    }
    
    func test_title_isQuestions() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.title, "Questions")
    }
}

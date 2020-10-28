//
//  MockQuestionsViewModel.swift
//  iOS-questions
//
//  Created by David Anglin on 10/28/20.
//

import Foundation

protocol MockQuestionsVMContract {
    var questions: [Question] { get set }
    var questionsUpdated: () -> Void { get set }
}

class MockQuestionsViewModel: MockQuestionsVMContract {
    var questions: [Question] {
        didSet {
            self.questionsUpdated()
        }
    }
    
    public var questionsUpdated: (() -> Void) = {}
    
    init() {
        self.questions = Question.stubData
    }
}

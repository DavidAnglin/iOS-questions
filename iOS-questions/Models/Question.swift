//
//  Question.swift
//  iOS-questions
//
//  Created by David Anglin on 10/28/20.
//

import Foundation

struct Question: Codable, Equatable, Identifiable {
    let id: Int
    var question: String
}

extension Question: Stubbable {
    static func stub(withId id: Int) -> Question {
        return Question(id: 1, question: "This is a question?")
    }
    
    static var stubData: [Question] = {
        return [
            Question
                .stub(withId: 1)
                .setting(\.question, to: "What is an optional?"),
            Question
                .stub(withId: 2)
                .setting(\.question, to: "What is an class?"),
            Question
                .stub(withId: 3)
                .setting(\.question, to: "What is an struct?"),
            Question
                .stub(withId: 4)
                .setting(\.question, to: "How many times faster is a struct over a class?"),
            Question
                .stub(withId: 5)
                .setting(\.question, to: "What is a Protocol?"),
        ]
    }()
}



//
//  Stubbable.swift
//  iOS-questions
//
//  Created by David Anglin on 10/28/20.
//

import Foundation

protocol Stubbable {
    static func stub(withId id: Int) -> Self
}

extension Stubbable {
    func setting<T>(_ keyPath: WritableKeyPath<Self, T>, to value: T) -> Self {
        var stub = self
        stub[keyPath: keyPath] = value
        return stub
    }
}

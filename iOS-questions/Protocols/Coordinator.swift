//
//  Coordinator.swift
//  iOS-questions
//
//  Created by David Anglin on 10/28/20.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

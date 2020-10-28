//
//  MainCoordinator.swift
//  iOS-questions
//
//  Created by David Anglin on 10/28/20.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = MockQuestionsViewModel()
        let viewController = MockQuestionsTableViewController(viewModel: viewModel)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
}

//
//  CoordinatorTests.swift
//  iOS-questionsTests
//
//  Created by David Anglin on 10/28/20.
//

@testable import iOS_questions
import XCTest

class CoordinatorTests: XCTestCase {
    
    var sut: MainCoordinator!

    override func setUp() {
        super.setUp()
        let navigationController = UINavigationController()
        sut = MainCoordinator(navigationController: navigationController)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_whenInitialized_childCoordinatorsIsEmpty() {
        XCTAssertTrue(sut.childCoordinators.isEmpty)
    }
    
    func test_whenInitialized_navigationControllerIsInited() {
        XCTAssertNotNil(sut.navigationController)
    }
    
    func test_onStart_viewControllerInNavController() {
        sut.start()
        XCTAssertEqual(sut.navigationController.viewControllers.count, 1)
    }
}

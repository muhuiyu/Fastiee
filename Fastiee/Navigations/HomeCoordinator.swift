//
//  HomeCoordinator.swift
//  Fastiee
//
//  Created by Mu Yu on 6/25/22.
//

import UIKit

class HomeCoordinator: Coordinator {
    private weak var parentCoordinator: AppCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController?
    
    enum Destination {
        case editStartTime
        case editGoal
        case addJournal
        case endFast
    }
    
    init(navigationController: UINavigationController,
         parentCoordinator: AppCoordinator?) {
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
    }
    
    func start() {
        
    }
    
    func navigate(to destination: Destination, presentModally: Bool) {
        guard let viewController = makeViewController(for: destination) else { return }
        if presentModally {
            navigationController?.present(viewController, animated: true)
        } else {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

// MARK: - ViewController List
extension HomeCoordinator {
    private func makeViewController(for destination: Destination) -> ViewController? {
        // TODO: - Configure Navigation Bar
        
        switch destination {
        case .editStartTime:
            // TODO: - Add ViewController
            return ViewController()
        case .editGoal:
            // TODO: - Add ViewController
            return ViewController()
        case .addJournal:
            // TODO: - Add ViewController
            return ViewController()
        case .endFast:
            // TODO: - Add ViewController
            return ViewController()
        }
    }

}

// MARK: - Navigation
extension HomeCoordinator {
    func showEditGoal() {
        self.navigate(to: .editGoal, presentModally: true)
    }
    func showEndFast() {
        self.navigate(to: .endFast, presentModally: true)
    }
}

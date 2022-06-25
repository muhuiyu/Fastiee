//
//  MainTabBarController.swift
//  Fastiee
//
//  Created by Mu Yu on 6/25/22.
//

import UIKit

class MainTabBarController: UITabBarController {
    weak var appCoordinator: AppCoordinator?
    weak var homeCoordinator: HomeCoordinator?
    weak var meCoordinator: MeCoordinator?
    
    deinit {
        // TODO: - remove notification center
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

// MARK: - View Configs
extension MainTabBarController {
    @objc
    private func configureTabBarItems() {
        configureInitialTabBarItems()
    }
    
    private func configureInitialTabBarItems() {
        var mainViewControllers = [BaseViewController]()
        TabBarCategory.allCases.forEach { [weak self] category in
            guard let self = self else { return }
            let viewController = generateViewController(category)
            viewController.tabBarItem = self.createTabBarItem(category)
            mainViewControllers.append(viewController)
        }
        self.viewControllers = mainViewControllers
    }
    
    private func createTabBarItem(_ tab: TabBarCategory) -> UITabBarItem {
        let item = UITabBarItem(title: tab.title,
                                image: tab.inactiveImageValue,
                                tag: tab.rawValue)
        item.selectedImage = tab.activeImageValue
        return item
    }
    
    private func generateViewController(_ type: TabBarCategory) -> BaseViewController {
        let viewController = type.viewController
        viewController.appCoordinator = self.appCoordinator
        viewController.homeCoordinator = self.homeCoordinator
        viewController.meCoordinator = self.meCoordinator
        return viewController
    }

}

enum TabBarCategory: Int, CaseIterable {
    case home = 0
    case me = 1
    
    var title: String {
        switch self {
        case .home: return Localized.MainTab.home
        case .me: return Localized.MainTab.me
        }
    }
    
    var inactiveImageValue: UIImage? {
        switch self {
        case .home: return UIImage(systemName: "clock")
        case .me: return UIImage(systemName: "person")
        }
    }
    
    var activeImageValue: UIImage? {
        switch self {
        case .home: return UIImage(systemName: "clock.fill")
        case .me: return UIImage(systemName: "person.fill")
        }
    }
    
    var viewController: BaseViewController {
        switch self {
        case .home: return HomeViewController()
        case .me: return MeViewController()
        }
    }
}

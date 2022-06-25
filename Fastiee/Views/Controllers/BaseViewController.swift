//
//  BaseViewController.swift
//  Fastiee
//
//  Created by Mu Yu on 6/25/22.
//

import UIKit

class BaseViewController: ViewController {
    
    // MARK: - Coordinators
    weak var appCoordinator: AppCoordinator?
    weak var homeCoordinator: HomeCoordinator?
    weak var meCoordinator: MeCoordinator?
    
    private lazy var refreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
        configureGestures()
        configureSignals()
    }
}

// MARK: - View Config
extension BaseViewController {
    private func configureViews() {
        
    }
    private func configureConstraints() {
        
    }
    private func configureGestures() {
        
    }
    private func configureSignals() {
        
    }
}

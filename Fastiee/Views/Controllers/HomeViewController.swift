//
//  HomeViewController.swift
//  Fastiee
//
//  Created by Mu Yu on 6/25/22.
//

import UIKit

class HomeViewController: BaseViewController {
    
    private let fastingTimerView = HomeFastingTimerView()
    
    var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
        configureGestures()
        configureSignals()
    }
}
// MARK: - View Config
extension HomeViewController {
    private func configureViews() {
        view.addSubview(fastingTimerView)
    }
    private func configureConstraints() {
        fastingTimerView.snp.remakeConstraints { make in
            make.edges.equalTo(view.layoutMarginsGuide)
        }
    }
    private func configureGestures() {
        
    }
    private func configureSignals() {
        
    }
}


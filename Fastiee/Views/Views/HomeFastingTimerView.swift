//
//  HomeFastingTimerView.swift
//  Fastiee
//
//  Created by Mu Yu on 6/25/22.
//

import UIKit

class HomeFastingTimerView: UIView {
    
    private let timeLabel = UILabel()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        configureViews()
        configureConstraints()
        configureGestures()
        configureSignals()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
// MARK: - View Config
extension HomeFastingTimerView {
    private func configureViews() {
        backgroundColor = .yellow
        
        timeLabel.font = UIFont.h2
        timeLabel.text = "12:19:22"
        
        addSubview(timeLabel)
    }
    private func configureConstraints() {
        timeLabel.snp.remakeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    private func configureGestures() {
        
    }
    private func configureSignals() {
        
    }
}


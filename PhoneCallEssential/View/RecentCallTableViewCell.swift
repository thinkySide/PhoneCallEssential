//
//  RecentCallTableViewCell.swift
//  PhoneCallEssential
//
//  Created by 김민준 on 2023/02/01.
//

import UIKit

final class RecentCallTableViewCell: UITableViewCell {
    
    // MARK: - Observer
    
    var recentCall: RecentCall? {
        didSet {
            guard let recentCall = recentCall else { return }
            sentPersonNameLabel.text = recentCall.sentPersonName
            sentLocationLabel.text = recentCall.sentLocation
        }
    }
    
    
    
    // MARK: - Cell Component
    
    let sentPersonNameLabel: UILabel = {
        let label = UILabel()
        label.text = "사용자 이름"
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.textAlignment = .left
        return label
    }()
    
    let sentLocationLabel: UILabel = {
        let label = UILabel()
        label.text = "발신 정보"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .left
        label.textColor = .systemGray
        return label
    }()
    
    lazy var leftStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [sentPersonNameLabel,sentLocationLabel])
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 4
        return stack
    }()
    
    // MARK: - Method
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupAddView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupAddView() {
        addSubview(leftStackView)
    }
    
    
    // MARK: - Auto Layout
    
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    func setConstraints() {
        
        // Auto Resize false
        leftStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            // leftStackView
            leftStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            leftStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
        ])
        
    }
    
}

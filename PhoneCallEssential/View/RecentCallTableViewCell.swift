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
            sentDateLabel.text = recentCall.sentDate
        }
    }
    
    
    
    // MARK: - Cell Component
    
    let sentPersonNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.textAlignment = .left
        return label
    }()
    
    let sentLocationLabel: UILabel = {
        let label = UILabel()
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
    
    let sentDateLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.textAlignment = .right
        label.textColor = .systemGray
        return label
    }()
    
    lazy var sentInfo: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "info.circle"), for: .normal)
        button.setPreferredSymbolConfiguration(.init(pointSize: 20), forImageIn: .normal)
        button.addTarget(self, action: #selector(sentInfoButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var rightStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [sentDateLabel, sentInfo])
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 6
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
        addSubview(rightStackView)
    }
    
    @objc func sentInfoButtonTapped() {
        print("버튼 클릭!")
    }
    
    
    // MARK: - Auto Layout
    
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    func setConstraints() {
        
        // Auto Resize false
        leftStackView.translatesAutoresizingMaskIntoConstraints = false
        rightStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            // leftStackView
            leftStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            leftStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            
            // rightStackView
            rightStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            rightStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            
        ])
        
    }
    
}

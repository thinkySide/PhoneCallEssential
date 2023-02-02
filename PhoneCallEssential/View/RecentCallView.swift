//
//  RecentCallView.swift
//  PhoneCallEssential
//
//  Created by 김민준 on 2023/02/01.
//

import UIKit

final class RecentCallView: UIView {
    
    // MARK: - Component
    
    let segmentedControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: ["전체", "부재중 전화"])
        segment.selectedSegmentIndex = 0
        return segment
    }()
    
    let tableView: UITableView = {
        let table = UITableView()
        table.rowHeight = 60
        return table
    }()

    
    
    // MARK: - Method
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupAddView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupAddView() {
        self.addSubview(tableView)
    }
    
    
    
    // MARK: - Auto Layout
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    func setupConstraints() {
        
        // Auto Resize false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // tableView
            tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
        ])
    }
    
}

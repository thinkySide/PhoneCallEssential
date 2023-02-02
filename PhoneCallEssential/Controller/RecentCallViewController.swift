//
//  ViewController.swift
//  PhoneCallEssential
//
//  Created by 김민준 on 2023/02/01.
//

import UIKit

final class RecentCallViewController: UIViewController {
    
    // MARK: - Varialbe
    private let myView = RecentCallView()
    private var recentCallDataManager = DataManager()
    
    // MARK: - ViewController LifeCycle
    override func loadView() {
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        manageDelegate()
        setupUINavigation()
    }
    
    
    
    // MARK: - Function
    
    func initialSetup() {
        
        // 셀 등록
        myView.tableView.register(RecentCallTableViewCell.self, forCellReuseIdentifier: "RecentCallCell")
        
    }
    
    func manageDelegate() {
        myView.tableView.dataSource = self
        myView.tableView.delegate = self
    }
    
    func setupUINavigation() {
        
        // center
        navigationItem.titleView = myView.segmentedControl
        
        // left
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "편집", style: .plain, target: self, action: nil)
    }
    
}

extension RecentCallViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recentCallDataManager.getRecentCallData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myView.tableView.dequeueReusableCell(withIdentifier: "RecentCallCell") as! RecentCallTableViewCell
        
        cell.recentCall = recentCallDataManager.getRecentCallData()[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        // URLScheme 문자열을 통한 URL 인스턴스 생성
//        if let url = NSURL(string: "tel://0" + "\(recentCallDataManager.getRecentCallData()[indexPath.row].phoneNumber)"),
//
//            // canOpenURL 메서드를 통한 앱을 사용할 수 있는지 여부 확인
//            UIApplication.shared.canOpenURL(url as URL) {
//
//            // 사용 가능하다면 open을 통해 인스턴스 열어주기
//            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
//        }
        
    }
    
}

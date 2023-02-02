//
//  TabBarController.swift
//  PhoneCallEssential
//
//  Created by 김민준 on 2023/02/01.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Instance
        let firstTab = RecentCallViewController()
        let secondTab = ContaceViewController()
        
        // title
        firstTab.title = "최근 통화"
        secondTab.title = "연락처"
        
        // TabBarItem
        firstTab.tabBarItem = UITabBarItem(
            title: "최근 통화",
            image: UIImage(systemName: "clock.fill"),
            selectedImage: UIImage(systemName: "clock.fill")
        )
        
        secondTab.tabBarItem = UITabBarItem(
            title: "연락처",
            image: UIImage(systemName: "person.crop.circle.fill"),
            selectedImage: UIImage(systemName: "person.crop.circle.fill")
        )
        
        // largeTitleDisplayMode
        firstTab.navigationItem.largeTitleDisplayMode = .always
        secondTab.navigationItem.largeTitleDisplayMode = .always
        
        
        // Navigaion 설정
        let firstNav = UINavigationController(rootViewController: firstTab)
        let secondNav = UINavigationController(rootViewController: secondTab)
        
        // prefersLargeTitles
        firstNav.navigationBar.prefersLargeTitles = true
        secondNav.navigationBar.prefersLargeTitles = true
        
        // Insert
        viewControllers = [firstNav, secondNav]
        
    }
    
    

}

//
//  tabBarView.swift
//  AnimeRoll
//
//  Created by Shakir Kadirov on 26.02.2024.
//

import UIKit

class tabBarView: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.title = "Home Page"
        let settingsVC = UINavigationController(rootViewController: SettingsViewController())
        settingsVC.tabBarItem.image = UIImage(systemName: "gear")
        settingsVC.tabBarItem.title = "Settings"
        
        viewControllers = [homeVC, settingsVC]
        

        self.tabBar.backgroundColor = .systemGray3
    }
}

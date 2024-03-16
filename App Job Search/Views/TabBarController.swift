//
//  TabBarController.swift
//  App Job Search
//
//  Created by Fixed on 12.03.24.
//

import UIKit

class TabBarController: UITabBarController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }

    private func setupTabs() {
        
        #warning("Как запрезенить EnterAccountController в Tabbar")
        let mainVC = self.createNav(with: "Поиск", and: UIImage(systemName: "magnifyingglass"), vc: EnterAccountController())
        let favVC = self.createNav(with: "Избранное", and: UIImage(systemName: "heart"), vc: VacanyDetailedController())
        let applyingVC = self.createNav(with: "Отклики", and: UIImage(systemName: "envelope"), vc: MainViewController())
        let messagesVC = self.createNav(with: "Сообщения", and: UIImage(systemName: "message"), vc: UIViewController())
        let profileVC = self.createNav(with: "Профиль", and: UIImage(systemName: "person"), vc: ProfileController())
        self.setViewControllers([mainVC, favVC, applyingVC, messagesVC, profileVC], animated: true)
        tabBar.backgroundColor = UIColor.black
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        
        return nav
    }
}

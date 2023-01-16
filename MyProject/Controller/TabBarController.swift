//
//  TabBarController.swift
//  MyProject
//
//  Created by Айдар Оспанов on 14.01.2023.
//

import UIKit

enum Tabs: Int {
    case menu
    case purchase
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = .red
        //tabBar.barTintColor = .green
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = UIColor.lightGray.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let menuViewController = MenuViewController()
        let purchaseViewController = BaseViewController()
        
        //let menuNavigation = NavBarController(rootViewController: menuViewController)
        //let purchaseNavigation = NavBarController(rootViewController: purchaseViewController)
        
        menuViewController.tabBarItem = UITabBarItem(title: Resource.Strings.TabBar.menu, image: Resource.Images.TabBar.menu, tag: Tabs.menu.rawValue)
        
        purchaseViewController.tabBarItem = UITabBarItem(title: Resource.Strings.TabBar.purchase, image: Resource.Images.TabBar.purchase, tag: Tabs.purchase.rawValue)
        
        setViewControllers([
            menuViewController,
            purchaseViewController
        ], animated: false)
    }
}

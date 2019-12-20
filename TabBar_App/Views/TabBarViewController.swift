//
//  TabBarViewController.swift
//  TabBar_App
//
//  Created by 深見龍一 on 2019/12/20.
//  Copyright © 2019 深見龍一. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstVC = UINavigationController(rootViewController: FirstViewController.init(nibName: nil, bundle: nil))
        // タブのFooter部分を設定
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

        let secondVC = UINavigationController(rootViewController: SecondViewController.init(nibName: nil, bundle: nil))
        // タブのFooter部分を設定
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        
        self.viewControllers = [firstVC, secondVC]
    }
}

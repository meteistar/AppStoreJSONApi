//
//  BaseTabBarController.swift
//  AppStoreJSONApi
//
//  Created by mete on 29.04.2023.
//

import UIKit

class BaseTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .yellow
        let redViewController = UIViewController()
        redViewController.navigationItem.title = "Apps"
        redViewController.view.backgroundColor = .white
        
        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.tabBarItem.title = "Apps"
        redNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
        redNavController.navigationBar.prefersLargeTitles = true
        redNavController.navigationBar.backgroundColor = .white
        
        let blueViewController = UIViewController()
        blueViewController.navigationItem.title = "Search"
        blueViewController.view.backgroundColor = .white
        
        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.tabBarItem.title = "Search"
        blueNavController.tabBarItem.image = #imageLiteral(resourceName: "search")
        blueNavController.navigationBar.prefersLargeTitles = true
        blueNavController.navigationBar.backgroundColor = .white
        
        viewControllers = [
            redNavController,
            blueNavController
        ]
    }
}

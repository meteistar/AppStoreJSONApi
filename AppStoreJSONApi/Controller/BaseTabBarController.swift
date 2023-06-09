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
        
        viewControllers = [
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search"),
            createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps")
            
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController,
        title: String, imageName: String) -> UIViewController{
        
        let navController = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.backgroundColor = .white
        return navController
    }
}

//
//  TabBarController.swift
//  Instargram
//
//  Created by 김정민 on 2022/01/16.
//

import Foundation
import UIKit



class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedViewController = UINavigationController(rootViewController: FeedViewController())
        
        feedViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        
        let profileViewController = UIViewController()
        profileViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        
        viewControllers = [feedViewController,profileViewController]
        
    }
    
}

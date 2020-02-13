//
//  MainTabBar.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 13/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {
    
    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())
    let launchCoordinator = LaunchCoordinator(navigationController: UINavigationController())

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mainCoordinator.start()
        launchCoordinator.start()

        viewControllers = [mainCoordinator.navigationController, launchCoordinator.navigationController]
    }
    


}

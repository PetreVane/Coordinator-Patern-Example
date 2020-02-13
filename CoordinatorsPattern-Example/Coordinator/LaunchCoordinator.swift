//
//  LaunchCoordinator.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 13/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit

class LaunchCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let launchVC = LaunchViewController.instantiate()
        launchVC.childCoordinator = self
        launchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        navigationController.pushViewController(launchVC, animated: true)
    }
    
    
}

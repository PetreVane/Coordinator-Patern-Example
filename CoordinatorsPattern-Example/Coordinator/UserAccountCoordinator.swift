//
//  UserAccountCoordinator.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 12/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit


class UserAccountCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let userAccount = UserAccountViewController.instantiate()
        userAccount.childCoordinator = self
        navigationController.pushViewController(userAccount, animated: true)
    }
    
}

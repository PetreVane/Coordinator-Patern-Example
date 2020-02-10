//
//  MainCoordinator.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 10/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit


/// Concrete implementation of the Coordinator protocol
class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let firstVC = ViewController.instantiate()
        firstVC.coordinator = self
        navigationController.pushViewController(firstVC, animated: true)
    }
    
    func instantiateChatVC() {
        
        let chatVC = ChatViewController.instantiate()
        chatVC.coordinator = self
        navigationController.pushViewController(chatVC, animated: true)
        
    }
    
    func instantiateUserAccountVC() {
        
        let userAccount = UserAccountViewController.instantiate()
        userAccount.coordinator = self
        navigationController.pushViewController(userAccount, animated: true)
        
    }
    
    
}

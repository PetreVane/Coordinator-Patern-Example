//
//  ChatCoordinator.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 11/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit

class ChatCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let chatVC = ChatViewController.instantiate()
        chatVC.childCoordinator = self
        navigationController.pushViewController(chatVC, animated: true)
    }
        
}

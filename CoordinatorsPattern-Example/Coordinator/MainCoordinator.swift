//
//  MainCoordinator.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 10/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit


/// Concrete implementation of the Coordinator protocol
class MainCoordinator: NSObject, Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        // sets the MainCoordinator as delegate for UINavigationController
        navigationController.delegate = self
        
        // Instantiate ViewController
        let firstVC = ViewController.instantiate()
        
        // sets the MainCoordinator as parentCoordinator
        firstVC.coordinator = self
        
        // Pushes ViewController onto the stack
        navigationController.pushViewController(firstVC, animated: true)
    }
    
    func instantiateChatVC() {
        let chatCoordinator = ChatCoordinator(navigationController: navigationController)
        chatCoordinator.parentCoordinator = self
        childCoordinators.append(chatCoordinator)
        print("Child coordinator contains: \(childCoordinators)")
        
        chatCoordinator.start()
    }
    
    func instantiateUserAccountVC() {
        
        let userAccountCoordinator = UserAccountCoordinator(navigationController: navigationController)
        userAccountCoordinator.parentCoordinator = self
        childCoordinators.append(userAccountCoordinator)
        userAccountCoordinator.start()
    }
    
    /// Removes a child coordinator
    /// - Parameter child: child coordinator conforming to MainCoordinator
    ///
    /// Iterates over the list of childCoordinators and removes the one which points to the same reference as the argument passed to this method
    func removeChildCoordinator(_ child: Coordinator?) {
        
        // iterates over each element in chilrCoordinators array
        for (index, coordinator) in childCoordinators.enumerated() {
            
            // verifies if both objects point to the same reference
            if coordinator === child {
             
                // remove child from array
                childCoordinators.remove(at: index)
                print("Child Coordinator removed from index \(index)")
                break
            }
        }
    }
}

extension MainCoordinator: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        // Gets the transition coordinator object associated with a currently active transition or nil if no transition is in progress.
        guard let originViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else { return }
        
        // checks if the navigationController's list of ViewControllers already contains the originVierController; if it does, return
        if navigationController.viewControllers.contains(originViewController) {
            return
        }
        
        // if return has not been called, it means we're popping the viewController;
        // then, check to see if the originVC is chatVC, and if it is, then call the remove method
        if let chatViewController = originViewController as? ChatViewController {
            removeChildCoordinator(chatViewController.childCoordinator)
            print("Removed ChatVC: childCoordinators contains: \(childCoordinators)")
        }
        
        if let userAccountVC = originViewController as? UserAccountViewController {
            removeChildCoordinator(userAccountVC.childCoordinator)
            print("Removed userAccount VC")
            
        }
        
    }
}

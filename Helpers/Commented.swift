//
//  Commented.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 11/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import Foundation



    /// Removes a child coordinator
    /// - Parameter child: child coordinator conforming to MainCoordinator
    ///
    /// Iterates over the list of childCoordinators and removes the one which points to the same reference as the argument passed to this method
    func removeChild(_ child: Coordinator?) {

//        for (index, coordinator) in childCoordinators.enumerated() {
//            if coordinator === child {
//                childCoordinators.remove(at: index)
//                print("Child Coordinator removed from index \(index)")
//            }
//        }
    }


/// Called when the view is dismissed
/// - Parameter animated: bool value, specifying if dismissal should be animated
//override func viewDidDisappear(_ animated: Bool) {
//    super.viewDidDisappear(animated)
//
//    coordinator?.didFinishChatting()
//}


//func didFinishChatting() {
//    parentCoordinator?.removeChild(self)
//}

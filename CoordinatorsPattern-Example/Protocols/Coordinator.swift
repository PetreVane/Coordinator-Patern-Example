//
//  Coordinator.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 10/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController { get set }
    
    /// Called when the Coordinator is ready to take control over the App
    ///
    /// This method instantiates a new ViewController
    func start ()
}



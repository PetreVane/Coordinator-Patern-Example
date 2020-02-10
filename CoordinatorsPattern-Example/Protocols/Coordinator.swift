//
//  Coordinator.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 10/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit

protocol Coordinator {
    
    var childCoordinators: [Coordinator] {get set}
    
    var navigationController: UINavigationController { get set }
    
    func start ()
}

//
//  StoryBoarded.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 10/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit

protocol StoryBoarded {
    
    static func instantiate() -> Self
}


extension StoryBoarded where Self: UIViewController {
    
    /// Instantiate the class that adopts this protocol
    static func instantiate() -> Self {
        // gets the name of the class
        let classIdentifier = String(describing: self)
        // loads the storyboard
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // instantiate the class and force downcast it as Self
        return storyBoard.instantiateViewController(identifier: classIdentifier) as! Self
    }
}

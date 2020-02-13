//
//  ChatViewController.swift
//  CoordinatorsPattern-Example
//
//  Created by Petre Vane on 10/02/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, StoryBoarded {

    weak var childCoordinator: ChatCoordinator?
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(label)
        configureLabel()
        
    }
    
    private func configureLabel() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is the Chat window"
        label.textColor = .blue
        label.textAlignment = .center
        let padding: CGFloat = 50
        
        NSLayoutConstraint.activate([
        
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding * 5),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            label.heightAnchor.constraint(equalToConstant: padding)
        ])
        
    }
        
}

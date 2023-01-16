//
//  NavBarController.swift
//  MyProject
//
//  Created by Айдар Оспанов on 15.01.2023.
//

import UIKit

class BaseViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

extension BaseViewController {
    func configure() {
        view.backgroundColor = .white
    }
    
    func setupViews() {
    }
    
    func setConstraints() {
        
    }
}

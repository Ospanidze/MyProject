//
//  ViewController.swift
//  MyProject
//
//  Created by Айдар Оспанов on 14.01.2023.
//

import UIKit

class MenuViewController: UIViewController {

    let wowPizzaView = WoWPizzaView()
    let mealView = MealView()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        action()
        setupView()
        setConstraints()
    }
    
    func action() {
        let buttons = [wowPizzaView.deliveryButton, wowPizzaView.timeButtom]
        buttons.forEach {
            $0.addTarget(self, action: #selector(transion), for: .touchUpInside)
        }
    }
    
    @objc func transion() {
        let transionViewController = TransionViewController()
        present(transionViewController, animated: true)
    }
    
    @objc func newPage() {
        
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(wowPizzaView)
        view.addSubview(mealView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            wowPizzaView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            wowPizzaView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            wowPizzaView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            wowPizzaView.heightAnchor.constraint(equalToConstant: 100),
            
            mealView.topAnchor.constraint(equalTo: wowPizzaView.bottomAnchor),
            mealView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mealView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            mealView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }

}



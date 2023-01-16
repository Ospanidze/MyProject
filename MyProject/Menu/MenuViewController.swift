//
//  ViewController.swift
//  MyProject
//
//  Created by Айдар Оспанов on 14.01.2023.
//

import UIKit

//@available(iOS 15.0, *)
class MenuViewController: UIViewController {

    let wowPizzaView = WoWPizzaView()
    let foodView = FoodView()
    let mealView = MealView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        action()
        setupView()
        setConstraints()
    }
    
    func action() {
        wowPizzaView.deliveryButton.addTarget(self,
                                              action: #selector(deliveryAction),
                                              for: .touchUpInside)
//        wowPizzaView.timeButtom.addTarget(self,
//                                          action: #selector(timeAction),
//                                          for: .touchUpInside)
    }
    
    @objc func deliveryAction() {
        let deliveryView = DeliveryViewController()
        //deliveryView.modalPresentationStyle = .popover
//        if let sheet = deliveryView.sheetPresentationController {
//            sheet.detents = [.medium(), .]
//        }
        present(deliveryView, animated: true)
    }
    
//    @objc func timeAction() {
//        
//    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(wowPizzaView)
        view.addSubview(foodView)
        view.addSubview(mealView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            wowPizzaView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            wowPizzaView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            wowPizzaView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            wowPizzaView.heightAnchor.constraint(equalToConstant: 100),
            
            foodView.topAnchor.constraint(equalTo: wowPizzaView.bottomAnchor,constant: 0),
            foodView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            foodView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            foodView.heightAnchor.constraint(equalToConstant: 80),
            
            mealView.topAnchor.constraint(equalTo: foodView.bottomAnchor, constant: 0),
            mealView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mealView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            mealView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }

}

//extension MenuViewController {
//
//}

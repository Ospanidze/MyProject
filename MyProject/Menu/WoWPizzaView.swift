//
//  WowPizza.swift
//  MyProject
//
//  Created by Айдар Оспанов on 15.01.2023.
//

import UIKit

class WoWPizzaView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "WoW Pizza Astana"
        label.font = UIFont(name: "Avenir Next Bold", size: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let deliveryButton: UIButton = {
        let button = UIButton()
        button.setTitle(" Бесплатно", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.setImage(Resource.Images.Header.car, for: .normal)
        button.setTitleColor(UIColor.cyan, for: .highlighted)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        //button.addTarget(MenuViewController.self, action: #selector(deliveryAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let timeButtom: UIButton = {
        let button = UIButton()
        button.setTitle(" ≈ 95 минут", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.setImage(Resource.Images.Header.time, for: .normal)
        
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        //button.addTarget(MenuViewController.self, action: #selector(timeAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    @objc func timeAction() {
//        let deliveryView = DeliveryViewController()
//
//    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(deliveryButton)
        addSubview(timeButtom)
    }
    
    private func setContraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            deliveryButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            deliveryButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            deliveryButton.widthAnchor.constraint(equalToConstant: 110),
            deliveryButton.heightAnchor.constraint(equalToConstant: 30),
            
            timeButtom.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            timeButtom.leadingAnchor.constraint(equalTo: deliveryButton.trailingAnchor, constant: 10),
            timeButtom.widthAnchor.constraint(equalToConstant: 110),
            timeButtom.heightAnchor.constraint(equalToConstant: 30),
        ])
        
    }
    
}

//extension WoWPizzaView {
//    func showAlert() {
//        let alertController = UIAlertController(title: "Стоимость доставки", message: "На заказ от 4000 тг", preferredStyle: .actionSheet)
//        
//        present(alertController, animated: true) {
//            print("hello")
//        }
//    }
//    
//    func presentAlert() {
//        
//    }
//}

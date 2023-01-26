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
    
    lazy var deliveryButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitle(" Бестплатно", for: .normal)
        button.setImage(Resource.Images.Header.car, for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.setTitleColor(UIColor.red, for: .highlighted)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.addTarget(ButtonCollectionViewCell.self, action: #selector(newPage), for: .touchUpInside)
        return button
    }()
    
    lazy var timeButtom: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitle(" ~95минут", for: .normal)
        button.setImage(Resource.Images.Header.time, for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.setTitleColor(UIColor.red, for: .highlighted)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.addTarget(ButtonCollectionViewCell.self, action: #selector(newPage), for: .touchUpInside)
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


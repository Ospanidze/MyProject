//
//  TipsCollectionViewCell.swift
//  MyProject
//
//  Created by Айдар Оспанов on 15.01.2023.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    
    let foodLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        //label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    override var isSelected: Bool {
//        didSet {
//            if isSelected {
//                layer.borderWidth = 3
//                layer.borderColor = UIColor.red.cgColor
//            } else {
//                layer.borderWidth = 0
//            }
//        }
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        //backgroundColor = .cyan
        
        layer.borderWidth = 2
        layer.cornerRadius = 10
        //clipsToBounds = true
        addSubview(foodLabel)
        
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            foodLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            foodLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            foodLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            foodLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
    
}


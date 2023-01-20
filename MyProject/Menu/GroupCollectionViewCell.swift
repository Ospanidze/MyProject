//
//  TipsCollectionViewCell.swift
//  MyProject
//
//  Created by Айдар Оспанов on 15.01.2023.
//

import UIKit

class GroupCollectionViewCell: UICollectionViewCell {
    
    let foodNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        //label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderColor = UIColor.red.cgColor
            } else {
                layer.borderColor = UIColor.black.cgColor
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        //backgroundColor = .cyan
        
        layer.borderWidth = 2
        layer.cornerRadius = 10
        //clipsToBounds = true
        addSubview(foodNameLabel)
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            foodNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            foodNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            foodNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            foodNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
    
    func setupCell(group: SectionMenu) {
        foodNameLabel.text = group.sectionName
    }
    
}


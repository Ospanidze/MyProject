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
        
        
        layer.borderWidth = 2
        layer.cornerRadius = 10
        
        addSubview(foodNameLabel)
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            foodNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            foodNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    func setupCell(group: SectionMenu) {
        foodNameLabel.text = group.sectionName
    }
    
}


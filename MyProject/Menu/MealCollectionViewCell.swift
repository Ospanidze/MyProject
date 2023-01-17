//
//  MealCollectionViewCell.swift
//  MyProject
//
//  Created by Айдар Оспанов on 16.01.2023.
//

import UIKit

class MealCollectionViewCell: UICollectionViewCell {
    
//    let titleLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Пицца"
//        label.font = UIFont(name: "Avenir Next Bold", size: 30)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.tintColor = .lightGray
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let costLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .heavy)
        label.tintColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let plusButton: UIButton = {
        let button = UIButton()
        button.setImage(Resource.Images.plus, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 12
        image.layer.borderWidth = 1
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
//        addSubview(titleLabel)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(costLabel)
        addSubview(plusButton)
        addSubview(imageView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
//            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
//            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -10),
            
            costLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            costLabel.leadingAnchor.constraint(equalTo: leadingAnchor),

            plusButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            plusButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func configure(_ pizza: Menu) {
        nameLabel.text = pizza.name
        descriptionLabel.text = pizza.description
        costLabel.text = String(pizza.cost)
        imageView.image = pizza.image
    }
    
}



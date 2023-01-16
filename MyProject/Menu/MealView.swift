//
//  MealView.swift
//  MyProject
//
//  Created by Айдар Оспанов on 16.01.2023.
//

import UIKit

class MealView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Пицца"
        label.font = UIFont(name: "Avenir Next Bold", size: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let collectionMealView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
//        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let lotOfPizza = Service.makePiza()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstaints()
        setDelegates()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(collectionMealView)
        collectionMealView.register(MealCollectionViewCell.self, forCellWithReuseIdentifier: "MealCollectionViewCell")
    }
    
    func setDelegates() {
        collectionMealView.delegate = self
        collectionMealView.dataSource = self
    }
   
    
}

extension MealView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        lotOfPizza.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MealCollectionViewCell.self)", for: indexPath) as?  MealCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(lotOfPizza[indexPath.item])
        return cell
    }
}

extension MealView: UICollectionViewDelegate {
    
}

extension MealView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width,
               height: collectionView.frame.width / 2.5 )
    }
}


extension MealView {
    func setConstaints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            collectionMealView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            collectionMealView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            collectionMealView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            collectionMealView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

//
//  FoodView.swift
//  MyProject
//
//  Created by Айдар Оспанов on 15.01.2023.
//

import UIKit

class FoodView: UIView {
    
    let collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .horizontal
        collectionViewLayout.minimumLineSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let meals = [
        "Сеты",
        "Fast&Tasty",
        "Холодные роллы",
        "Пицца",
        "Теплые роллы",
        "Запеченные роллы",
        "Напитки",
        "Cоусы"
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        setupView()
        setConstraints()
        setDelegates()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(collectionView)
        collectionView.register(FoodCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    func setDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}

extension FoodView: UICollectionViewDataSource {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        2
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        meals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? FoodCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.foodLabel.text = meals[indexPath.item]
        return cell
    }
    
}

extension FoodView: UICollectionViewDelegate {
    
}

extension FoodView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 3.5,
               height: collectionView.frame.width / 8)
    }
}

extension FoodView {
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            collectionView.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}

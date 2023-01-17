//
//  MealView.swift
//  MyProject
//
//  Created by Айдар Оспанов on 16.01.2023.
//

import UIKit

class MealView: UIView {
    
    let collectionMealView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.headerReferenceSize = .init(width: 100, height: 50)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
//        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    //let lotOfPizza = Service.makePizza()
    
    let typeOfMeals: [SectionMenu] = [
        SectionMenu(sectionName: "Пицца", menu: Service.makePizza()),
        SectionMenu(sectionName: "Сеты", menu: Service.makeSnack())
    ]
   
    
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
        
        addSubview(collectionMealView)
        
        collectionMealView.register(HeaderReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(HeaderReusableView.self)")
        collectionMealView.register(MealCollectionViewCell.self, forCellWithReuseIdentifier: "\(MealCollectionViewCell.self)")
    }
    
    func setDelegates() {
        collectionMealView.delegate = self
        collectionMealView.dataSource = self
    }
   
    
}

extension MealView: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        typeOfMeals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //lotOfPizza.count
        typeOfMeals[section].menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MealCollectionViewCell.self)", for: indexPath) as?  MealCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        //cell.configure(lotOfPizza[indexPath.item])
        cell.configure(typeOfMeals[indexPath.section].menu[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "\(HeaderReusableView.self)", for: indexPath) as? HeaderReusableView else { return UICollectionReusableView() }
            view.titleLabel.text = typeOfMeals[indexPath.section].sectionName
            return view
        default: return UICollectionReusableView()
        }
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
            collectionMealView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            collectionMealView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            collectionMealView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            collectionMealView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

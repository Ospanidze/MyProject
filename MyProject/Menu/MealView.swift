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
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let collectionGroupView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .horizontal
        collectionViewLayout.minimumLineSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let typeOfMeals: [SectionMenu] = [
        SectionMenu(sectionName: "Пицца", menu: Service.makePizza()),
        SectionMenu(sectionName: "Сеты", menu: Service.makeSnack()),
        SectionMenu(sectionName: "Десерты", menu: Service.makeDessert()),
        SectionMenu(sectionName: "Напитки", menu: Service.makeDrink()),
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
        addSubview(collectionGroupView)
        
        collectionMealView.register(HeaderReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(HeaderReusableView.self)")
        collectionMealView.register(MealCollectionViewCell.self, forCellWithReuseIdentifier: "\(MealCollectionViewCell.self)")
        
        collectionGroupView.register(GroupCollectionViewCell.self, forCellWithReuseIdentifier: "\(GroupCollectionViewCell.self)")
        
    }
    
    func setDelegates() {
        collectionMealView.delegate = self
        collectionMealView.dataSource = self
        
        collectionGroupView.delegate = self
        collectionGroupView.dataSource = self
    }
   
    
}

extension MealView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        guard collectionView == collectionMealView else { return 1 }
        return typeOfMeals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        collectionView == collectionGroupView ? typeOfMeals.count  :
        typeOfMeals[section].menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionGroupView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(GroupCollectionViewCell.self)", for: indexPath) as?  GroupCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.setupCell(group: typeOfMeals[indexPath.item])
            return cell
        } else {
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MealCollectionViewCell.self)", for: indexPath) as?  MealCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.configure(typeOfMeals[indexPath.section].menu[indexPath.item])
            return cell
        }

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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard collectionView == collectionGroupView else { return }
        let selectedGroupIndex = 1
//        print("selected \(indexPath.section) - \(indexPath.item)")
        let sectionIndexPath = IndexPath(item: selectedGroupIndex, section: indexPath.item)
        collectionMealView.scrollToItem(at: sectionIndexPath, at: .centeredVertically, animated: true)
    }
    
//    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
//        <#code#>
//    }
}

extension MealView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionGroupView {
            return CGSize(width: collectionView.frame.width / 4,
                          height: collectionView.frame.width / 7.7 )
        } else {
           return CGSize(width: collectionView.frame.width,
                   height: collectionView.frame.width / 2.5 )
        }
        
    }
}


extension MealView {
    
    func setConstaints() {
        NSLayoutConstraint.activate([
            collectionGroupView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            collectionGroupView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            collectionGroupView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            collectionGroupView.heightAnchor.constraint(equalToConstant: 80),
            
            collectionMealView.topAnchor.constraint(equalTo: collectionGroupView.bottomAnchor, constant: 10),
            collectionMealView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            collectionMealView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            collectionMealView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

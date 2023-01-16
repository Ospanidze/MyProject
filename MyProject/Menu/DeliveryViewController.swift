//
//  DeliveryViewController.swift
//  MyProject
//
//  Created by Айдар Оспанов on 15.01.2023.
//

import UIKit

class DeliveryViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Стоимость доставки"
        label.font = UIFont.systemFont(ofSize: 27, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setLayout()
    }
    
    private func setupViews() {
        view.backgroundColor = .green
        view.addSubview(titleLabel)
    }
    
    private func setLayout() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5)
        ])
    }
}

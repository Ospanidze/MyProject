//
//  Resource.swift
//  MyProject
//
//  Created by Айдар Оспанов on 15.01.2023.
//

import UIKit

struct Assistant {
    let title: String
    let image: UIImage
}

enum Resource {
    enum Strings {
        enum TabBar {
            static let menu = "Меню"
            static let purchase = "Корзина"
        }
    }
    
    enum Images {
        enum TabBar {
            static let menu = UIImage(named: "menu")
            static let purchase = UIImage(named: "purchase")
        }
        
        enum Header {
            static let car = UIImage(named: "car")  ?? UIImage()
            static let time = UIImage(named: "time")  ?? UIImage()
        }
        
        static let plus = UIImage(named: "plus")
    }
}




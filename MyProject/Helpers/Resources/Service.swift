//
//  Service.swift
//  MyProject
//
//  Created by Айдар Оспанов on 16.01.2023.
//

import UIKit

struct Pizza {

    let name: String
    let image: UIImage
    let description: String
    let cost: Int
}

struct ImageName {
    
    static let fourPizza = UIImage(named: "Четыре сыра") ?? UIImage()
    static let woodPizza = UIImage(named: "Деревенская пицца") ?? UIImage()
    static let cheesePizza = UIImage(named: "Сырная пицца") ?? UIImage()
    static let devilPizza = UIImage(named: "Дьябло") ?? UIImage()
    static let pepperoniPizza =  UIImage(named: "Пепперони") ?? UIImage()
    static let margheritaPizza = UIImage(named: "Маргарита") ?? UIImage()
    static let alfredoPizza = UIImage(named: "Альфредо") ?? UIImage()
    static let tenderСhickenPizza = UIImage(named: "Нежный Цыпленок") ?? UIImage()
}

struct Description {
    
    static let fourPizza = """
    Кортофельное пюре, охотничьи колбаски,
    корнишоны, зелень, сладкий горчичный соус,
    кетчуп, соус равен, сыр моцарелла
    """
    static let woodPizza = """
    Сыр сауда, сыр пармезан, голубой сыр Блю Чиз
    (с плесенью), моцарелла, сливочный соус
    """
    
    static let cheesePizza = """
    Сыр моцарелла, сыр гауда,
    орегано, томатный соус
    """
    
    static let devilPizza = """
    Колбаса из говядины, жгучий перчик,
    перец халапеньо, томатный соус и сыр
    моцарелла
    """
    
    static let pepperoniPizza = """
    Колбаса из говядины, томатный соус
    и сыр моцарелла
    """
    
    static let margheritaPizza = """
    Классическая пицца
    Свежие томаты, томатный соус и сыр моцарелла
    """
    
    static let alfredoPizza = """
    Соус Альфредо, филе цыпленка, шампиньоны,
    томаты, пармезан, щепотка итальянского орегано,
    сыр моцарелла
    """
    
    static let tenderСhickenPizza = """
    Филе цыпленка, помидоры черри,
    сладкий болгарский перец,
    томатный соус и сыр моцарелла
    """
    
    
}

struct Service {
    static func makePiza() -> [Pizza] {
        [
            .init(name: "Деревенская пицца", image: ImageName.woodPizza, description: Description.fourPizza, cost: 2280),
            .init(name: "Четыра сыра пицца", image: ImageName.fourPizza, description: Description.fourPizza, cost: 2180),
            .init(name: "Cырная пицца", image: ImageName.cheesePizza, description: Description.cheesePizza, cost: 2080),
            .init(name: "Дьябло", image: ImageName.devilPizza, description: Description.devilPizza, cost: 2280),
            .init(name: "Пепперони", image: ImageName.pepperoniPizza, description: Description.pepperoniPizza, cost: 2080),
            .init(name: "Маргарита", image: ImageName.margheritaPizza, description: Description.margheritaPizza, cost: 1880),
            .init(name: "Альфредо", image: ImageName.alfredoPizza, description: Description.alfredoPizza, cost: 2380),
            .init(name: "Нежный Цыпленок", image: ImageName.tenderСhickenPizza, description: Description.tenderСhickenPizza, cost: 2180),
        ]
    }

}

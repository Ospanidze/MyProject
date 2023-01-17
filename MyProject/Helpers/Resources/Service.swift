//
//  Service.swift
//  MyProject
//
//  Created by Айдар Оспанов on 16.01.2023.
//

import UIKit

struct Menu {

    let name: String
    let image: UIImage
    let description: String
    let cost: Int
}

struct Service {
    
    static func makePizza() -> [Menu] {
        [
            .init(name: "Деревенская пицца", image: ImageNamePizza.woodPizza, description: DescriptionPizza.fourPizza, cost: 2280),
            .init(name: "Четыра сыра пицца", image: ImageNamePizza.fourPizza, description: DescriptionPizza.fourPizza, cost: 2180),
            .init(name: "Cырная пицца", image: ImageNamePizza.cheesePizza, description: DescriptionPizza.cheesePizza, cost: 2080),
            .init(name: "Дьябло", image: ImageNamePizza.devilPizza, description: DescriptionPizza.devilPizza, cost: 2280),
            .init(name: "Пепперони", image: ImageNamePizza.pepperoniPizza, description: DescriptionPizza.pepperoniPizza, cost: 2080),
            .init(name: "Маргарита", image: ImageNamePizza.margheritaPizza, description: DescriptionPizza.margheritaPizza, cost: 1880),
            .init(name: "Альфредо", image: ImageNamePizza.alfredoPizza, description: DescriptionPizza.alfredoPizza, cost: 2380),
            .init(name: "Нежный Цыпленок", image: ImageNamePizza.tenderСhickenPizza, description: DescriptionPizza.tenderСhickenPizza, cost: 2180),
        ]
    }
    
    static func makeSnack() -> [Menu] {
        [
            .init(name: "Филадельфия", image: ImageNameSnack.philadelphiaSnack, description: DescriptionSnack.philadelphiaSnack, cost: 2800),
            .init(name: "Бонито Маки", image: ImageNameSnack.bonitoSnack, description: DescriptionSnack.bonitoSnack, cost: 1800),
            .init(name: "Фила GRILL", image: ImageNameSnack.philSnack, description: DescriptionSnack.philSnack, cost: 2900),
            .init(name: "Юмико Ролл", image: ImageNameSnack.umikoSnack, description: DescriptionSnack.umikoSnack, cost: 2900),
            .init(name: "Каппа Маки", image: ImageNameSnack.capaSnack, description: DescriptionSnack.capaSnack, cost: 700),
            .init(name: "Ролл Лосось", image: ImageNameSnack.salmonSnack, description: DescriptionSnack.salmonSnack, cost: 900),
            .init(name: "Ролл Угорь", image: ImageNameSnack.eelSnack, description: DescriptionSnack.eelSnack, cost: 1000),
            .init(name: "Хот-Шик Ролл", image: ImageNameSnack.chicSnack, description: DescriptionSnack.chicSnack, cost: 2600),
        ]
    }

}

struct SectionMenu {
    let sectionName: String
    let menu: [Menu]
}

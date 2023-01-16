//
//  SceneDelegate.swift
//  MyProject
//
//  Created by Айдар Оспанов on 14.01.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let tabBarContoller = TabBarController()
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarContoller
        window?.makeKeyAndVisible()
    }

}


//
//  SceneDelegate.swift
//  MVVM
//
//  Created by tambanco 🥳 on 12.05.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let model = Person(firstName: "David", lastName: "Blaine")
        let viewModel = GreetingViewModel(person: model)
        let view = MainViewController()
        view.viewModel = viewModel
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
}


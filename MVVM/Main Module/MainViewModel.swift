//
//  MainViewModel.swift
//  MVVM
//
//  Created by tambanco 🥳 on 13.05.2022.
//

import Foundation

protocol MainViewModelProtocol: AnyObject {
    init(person: Person)
    func setGreeting()
}

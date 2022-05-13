//
//  MainViewModel.swift
//  MVVM
//
//  Created by tambanco 🥳 on 13.05.2022.
//

import Foundation

protocol MainViewModelProtocol: AnyObject {
    
    var greeting: String? { get }
    var greetingDidChange: ((MainViewModelProtocol)->())? { get set }
    init(person: Person)
    func setGreeting()
}

class MainViewModel: MainViewModelProtocol {
    
    let person: Person
    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((MainViewModelProtocol) -> ())?
    
    required init(person: Person) {
        self.person = person
    }
    
    func setGreeting() {
        self.greeting = "\(person.firstName)" + "\(person.secondName)"
    }
}

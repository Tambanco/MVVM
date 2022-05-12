//
//  MainViewController.swift
//  MVVM
//
//  Created by tambanco 🥳 on 12.05.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: GreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = { viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    let showGreetingButton = UIButton()
    let greetingLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.showGreetingButton.addTarget(self.viewModel, action: #selector(showGreeting), for: .touchUpInside)
    }
    
    
}

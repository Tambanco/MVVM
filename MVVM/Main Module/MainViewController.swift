//
//  MainViewController.swift
//  MVVM
//
//  Created by tambanco 🥳 on 13.05.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var viewModel: MainViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = {  viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func showGreetingTapped(_ sender: UIButton) {
        self.viewModel.setGreeting()
    }
}

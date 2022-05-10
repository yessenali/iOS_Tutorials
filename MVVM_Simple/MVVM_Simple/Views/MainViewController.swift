//
//  MainViewController.swift
//  MVVM_Simple
//
//  Created by Yessenali Zhanaidar on 10.05.2022.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var label: UILabel!
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(loginField.text ?? "", passwordField.text ?? "")
    }
    
    var viewModel = ViewModel()
    
    func initialState() {
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel.statusColor.bind({ (statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        })
    }
}

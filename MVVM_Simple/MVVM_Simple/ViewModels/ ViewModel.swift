//
//   ViewModel.swift
//  MVVM_Simple
//
//  Created by Yessenali Zhanaidar on 10.05.2022.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))

    func userButtonPressed(_ username: String, _ password: String) {
        if username != User.logins[0].username || password != User.logins[0].password {
            statusText.value = "Login Failed."
            statusColor.value = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
        else {
            statusText.value = "You successfully logged in."
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }
}

//
//  User.swift
//  MVVM_Simple
//
//  Created by Yessenali Zhanaidar on 10.05.2022.
//

import Foundation

struct User {
    let username: String?
    let password: String?
}

extension User {
    static var logins = [ User(username: "yessenali", password: "123")]
    
}

//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

struct LoginRequest: Content {
    var username: String
    var password: String
}


struct LoginResponse: Content {
    let result: Int
    let user: UserData
}

struct UserData: Content {
    var id: Int
    var firstName: String
    var lastName: String
    var login: String
    var password: String
    var email: String
    var gender: String
    var creditCards: String
    var bio: String

    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case firstName = "first_name"
        case lastName = "last_name"
        case login = "user_login"
        case password
        case email
        case gender
        case creditCards = "credit_card"
        case bio
    }
}

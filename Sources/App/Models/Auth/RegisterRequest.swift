//
//  File.swift
//  
//
//  Created by Andrey Vensko on 3.07.22.
//

import Vapor

struct RegisterRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}

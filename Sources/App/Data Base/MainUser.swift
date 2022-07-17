//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Foundation

class MainUser {
    static var shared = MainUser()

    var userData = UserData(id: 567,
                            firstName: "Andrey",
                            lastName: "Vensko",
                            login: "admin",
                            password: "admin",
                            email: "swiftSever@gmail.com",
                            gender: "m",
                            creditCards: "8759-8957-0987-0998",
                            bio: "Very smart gay")

    init() {}
}

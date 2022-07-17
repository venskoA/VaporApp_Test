//
//  File.swift
//  
//
//  Created by Andrey Vensko on 3.07.22.
//

import Vapor

class AuthenticationController {
    let login: String = "Admin"
    let password: String = "Admin"

    func registerUser(_ reg: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? reg.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = RegisterResponse(result: 1, user_message: "User registared", error_message: nil)

        return reg.eventLoop.future(response)
    }

    func loginUser(_ reg: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? reg.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }

        guard body.username == login,
              body.password == password
        else  {
            throw Abort(.unauthorized)
        }

        print(body)

        let userData = UserData(id: 567,
                                firstName: "Andrey",
                                lastName: "Vensko",
                                login: "admin",
                                password: "admin",
                                email: "swiftSever@gmail.com",
                                gender: "m",
                                creditCards: "8759-8957-0987-0998",
                                bio: "Very smart gay")
        let response = LoginResponse(result: 1, user: userData)

        return reg.eventLoop.future(response)
    }
}

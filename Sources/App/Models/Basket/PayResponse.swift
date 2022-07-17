//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

struct PayResponse: Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
}

//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

struct GoodsRequest: Content {
    var page: String
}

struct GoodsResponse: Content {
    var id_product: Int
    var product_name: String
    var price: Int
    var quantity: Int?
    var image: String?
    var description: String?
}

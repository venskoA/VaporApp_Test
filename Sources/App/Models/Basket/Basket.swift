//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

struct BasketRequest: Content {
    var id_user: String
}

struct BasketResponse: Content {
    var amount: Int
    var countGoods: Int
    var contents: [GoodsResponse]
}

struct AddGoodsRequest: Content {
    var id_product: Int
    var quantity: Int
}

struct RemoveGoodaRequest: Content {
    var id_product: Int
}

struct AddRemoveGoodsResponse: Content {
    var result: Int
    var userMassage: String?
    var errorMessoge: String?
}

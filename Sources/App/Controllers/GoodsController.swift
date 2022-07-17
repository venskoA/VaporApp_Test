//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

class GoodsController {
    func listBasket(_ reg: Request) throws -> EventLoopFuture<[GoodsResponse]> {
        guard let body = try? reg.content.decode(GoodsRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = AllGoods.shared.products

        return reg.eventLoop.future(response)
    }
}




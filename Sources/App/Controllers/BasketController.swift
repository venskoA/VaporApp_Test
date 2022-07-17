//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

class BasketController {
    
    func payForGoods(_ reg: Request) throws -> EventLoopFuture<PayResponse> {
        guard let body = try? reg.content.decode(PayRequest.self) else {
            return reg
                .eventLoop
                .future(PayResponse(result: 0, errorMessage: "Error Request"))
        }
        
        print(body)
        
        InBasketGoods.shared.listBasket = [GoodsResponse(id_product: 0,
                                                         product_name: "",
                                                         price: 0,
                                                         quantity: 0,
                                                         image: "",
                                                         description: "")]
        
        let response = PayResponse(result: 1, userMessage: "Oki")
        
        return reg.eventLoop.future(response)
    }
    
    func basket(_ reg: Request) throws -> EventLoopFuture<BasketResponse> {
        guard let body = try? reg.content.decode(BasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = BasketResponse(amount: 1,
                                      countGoods: 1,
                                      contents: InBasketGoods.shared.listBasket)
        
        return reg.eventLoop.future(response)
    }
    
    func addProdycts(_ reg: Request) throws -> EventLoopFuture<AddRemoveGoodsResponse> {
        guard let body = try? reg.content.decode(AddGoodsRequest.self) else {
            return reg.eventLoop.future(AddRemoveGoodsResponse(result: 0, errorMessoge: "404"))
        }
        
        print(body)
        
        
        
        var requredGoods = AllGoods.shared.products.filter { good in
            good.id_product == body.id_product
        }
        
        guard requredGoods.count > 0,
              var good = requredGoods.first else {
            return reg.eventLoop.future(AddRemoveGoodsResponse(result: 0, errorMessoge: "500"))
        }
        
        good.quantity = body.quantity
        InBasketGoods.shared.listBasket.append(good)
        
        let response = AddRemoveGoodsResponse(result: 1)
        
        return reg.eventLoop.future(response)
    }
    
    func removeProduct(_ reg: Request) throws -> EventLoopFuture<AddRemoveGoodsResponse> {
        guard let body = try? reg.content.decode(RemoveGoodaRequest.self) else {
            return reg.eventLoop.future(AddRemoveGoodsResponse(result: 0, errorMessoge: "404"))
        }
        
        print(body)
        
        guard let result = InBasketGoods.shared.listBasket.firstIndex(where: {$0.id_product == body.id_product}) else {
            return reg.eventLoop.future(AddRemoveGoodsResponse(result: 0, errorMessoge: "500"))
        }
        
        InBasketGoods.shared.listBasket.remove(at: result)
        
        let response = AddRemoveGoodsResponse(result: 1)
        
        return reg.eventLoop.future(response)
    }
}

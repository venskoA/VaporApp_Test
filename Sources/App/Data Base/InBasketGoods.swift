//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Foundation

class InBasketGoods {
    static let shared = InBasketGoods()

    var listBasket = [GoodsResponse(id_product: 1,
                                            product_name: "Laptop",
                                            price: 10000,
                                            quantity: 2,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 2,
                                            product_name: "Phone",
                                            price: 13456,
                                            quantity: 3,
                                            image: "2",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 3,
                                            product_name: "Book",
                                            price: 9800,
                                            quantity: 4,
                                            image: "3",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                      GoodsResponse(id_product: 4,
                                     product_name: "KKKO",
                                     price: 9800,
                                     quantity: 4,
                                     image: "3",
                                     description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),

    ]

    init() {}
}

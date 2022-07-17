//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Foundation

class AllGoods {
    static let shared = AllGoods()

    var products = [GoodsResponse(id_product: 1,
                                            product_name: "Laptop",
                                            price: 10000,
                                            quantity: 10,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 2,
                                            product_name: "Phone",
                                            price: 13456,
                                            quantity: 15,
                                            image: "2",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 3,
                                            product_name: "Book",
                                            price: 9800,
                                            quantity: 13,
                                            image: "3",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 4,
                                            product_name: "PowerBank",
                                            price: 10000,
                                            quantity: 10,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 5,
                                            product_name: "Charger",
                                            price: 10000,
                                            quantity: 7,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 6,
                                            product_name: "Key",
                                            price: 10000,
                                            quantity: 4,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 7,
                                            product_name: "Table",
                                            price: 10000,
                                            quantity: 6,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 8,
                                            product_name: "Pen",
                                            price: 10000,
                                            quantity: 2,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct"),
                             GoodsResponse(id_product: 9,
                                            product_name: "Pensil",
                                            price: 10000,
                                            quantity: 9,
                                            image: "1",
                                            description: "HD PLUS DISPLAY – View all your photos, movies, and games in crisp HD Plus (1600 x 900) resolution on a narrow-edge, 17.3-inch diagonal display (1). Plus, the BrightView glossy finish means on-screen colors pop while blacks appear deep and distinct")
    ]

    init() {}
}

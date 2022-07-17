//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

struct ReviewListRequest: Content {
    var id_product: String
}

struct ReviewListResponseMain: Content {
    var page_number: Int
    var review: [TextListReview]
}

struct TextListReview: Content {
    var id_review: Int
    var description: String
}

struct ReviewAddRequest: Content {
    var id_use: String
    var text: String
    var id_product: String
}

struct ReviewRemoveRequest: Content {
    var id_comment: Int
}

struct ReviewAddRemoveResponse: Content {
    var result: Int
    var userMassage: String?
    var errorMessage: String?
}

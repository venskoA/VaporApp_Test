//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Foundation

class ReviewList {
    static var shared = ReviewList()
    
    var firstReview = [TextListReview(id_review: 1, description: "Good product"),
                       TextListReview(id_review: 2, description: "This is a very bad producrt. It broken on two days"),
                       TextListReview(id_review: 3, description: "It functional"),
                       TextListReview(id_review: 4, description: "Good product")
    ]
    
    init() {}
}

//
//  File.swift
//  
//
//  Created by Andrey Vensko on 14.07.22.
//

import Vapor

class ReviewController {
    func listReview(_ reg: Request) throws -> EventLoopFuture<ReviewListResponseMain> {
        guard let body = try? reg.content.decode(ReviewListRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = ReviewListResponseMain(page_number: 1, review: ReviewList.shared.firstReview)

        return reg.eventLoop.future(response)
    }

    func addReview(_ reg: Request) throws -> EventLoopFuture<ReviewAddRemoveResponse> {
        guard let body = try? reg.content.decode(ReviewAddRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let idReview = ReviewList.shared.firstReview.count
        let newReview = TextListReview(id_review: idReview, description: body.text)
        ReviewList.shared.firstReview.append(newReview)

        let response = ReviewAddRemoveResponse(result: 1, userMassage: "Okiii")

        return reg.eventLoop.future(response)
    }

    func removeReview(_ reg: Request) throws -> EventLoopFuture<ReviewAddRemoveResponse> {
        guard let body = try? reg.content.decode(ReviewRemoveRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        guard let removeReviewIndex = ReviewList.shared.firstReview.firstIndex(where: {$0.id_review == body.id_comment}) else {
            return reg.eventLoop.future(ReviewAddRemoveResponse(result: 0, errorMessage: "500"))
        }

        ReviewList.shared.firstReview.remove(at: removeReviewIndex)

        let response = ReviewAddRemoveResponse(result: 2, userMassage: "Remove good")

        return reg.eventLoop.future(response)
    }




}

import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "Hellow"
    }

    let controllerAuth = AuthenticationController()
    app.post("postRegister", use: controllerAuth.registerUser(_:))
    app.post("postLogin", use: controllerAuth.loginUser(_:))

    let controllerBasket = BasketController()
    app.post("payBasket", use: controllerBasket.payForGoods(_:))
    app.post("getBasket", use: controllerBasket.basket(_:))
    app.post("addToBasket", use: controllerBasket.addProdycts(_:))
    app.post("deleteFromBasket", use: controllerBasket.removeProduct(_:))

    let controllerGoods = GoodsController()
    app.post("catalogData", use: controllerGoods.listBasket(_:))

    let controllerReview = ReviewController()
    app.post("listReview", use: controllerReview.listReview(_:))
    app.post("addReview", use: controllerReview.addReview(_:))
    app.post("removeReview", use: controllerReview.removeReview(_:))

    try app.register(collection: TodoController())
}

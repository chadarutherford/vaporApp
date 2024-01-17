//
//  WebRouter.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import Vapor

struct WebRouter: RouteCollection {
    let frontendController = WebFrontendController()
    
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: frontendController.homeView)
    }
}

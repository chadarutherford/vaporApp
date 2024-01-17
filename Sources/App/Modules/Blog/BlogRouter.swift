//
//  BlogRouter.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import Vapor

struct BlogRouter: RouteCollection {
    let controller = BlogFrontendController()
    
    func boot(routes: RoutesBuilder) throws {
        routes.get("blog", use: controller.blogView)
    }
}

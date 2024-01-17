//
//  configure.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import Vapor

public func configure(_ app: Application) throws {
    
    app.middleware.use(
        FileMiddleware(publicDirectory: app.directory.publicDirectory)
    )
    
    let routers: [RouteCollection] = [
        WebRouter(),
        BlogRouter()
    ]
    
    for router in routers {
        try router.boot(routes: app.routes)
    }
}

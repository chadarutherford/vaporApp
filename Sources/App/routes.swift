//
//  routes.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import SwiftHtml
import Vapor

struct MyTemplate: TemplateRepresentable {
    let title: String
    
    func render(_ req: Request) -> Tag {
        Html {
            Head {
                Title(title)
            }
            
            Body {
                H1(title)
            }
        }
    }
}

func routes(_ app: Application) throws {
    app.routes.get { req -> Response in
        req.templates.renderHtml(
            WebIndexTemplate(
                WebIndexContext(
                    title: "Home",
                    message: "Hi there, welcome to my page!")
            )
        )
    }
    
    app.routes.get("hello") { req -> Response in
        req.templates.renderHtml(MyTemplate(title: "Hello, World!"))
    }
}

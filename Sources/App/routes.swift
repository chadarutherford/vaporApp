//
//  routes.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import SwiftHtml
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }
    
    app.get("hello") { req -> Response in
        let doc = Document(.html) {
            Html {
                Head {
                    Title("Hello, World!")
                }
                
                Body {
                    H1("Hello, World!")
                }
            }
        }
        
        let body = DocumentRenderer(
            minify: false,
            indent: 4
        ).render(doc)
        
        return Response(
            status: .ok,
            headers: [
                "Content-Type": "text/html; charset=utf-8"
            ],
            body: .init(string: body)
        )
    }
}

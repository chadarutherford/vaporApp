//
//  WebFrontendController.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import Vapor

struct WebFrontendController {
    func homeView(req: Request) throws -> Response {
        let ctx = WebHomeContext(
            icon: "👋🏽",
            title: "Home",
            message: "Hi there, welcome to my page.",
            paragraphs: [
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliquia.",
                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.",
                "Nisi ut aliquip ex ea commodo consequat."
            ],
            link: .init(
                label: "Read my blog →",
                url: "/blog/"
            )
        )
        
        return req.templates.renderHtml(
            WebHomeTemplate(ctx)
        )
    }
}

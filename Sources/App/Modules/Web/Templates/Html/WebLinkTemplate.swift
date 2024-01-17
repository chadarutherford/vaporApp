//
//  WebLinkTemplate.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import SwiftHtml
import Vapor

struct WebLinkTemplate: TemplateRepresentable {
    
    var context: WebLinkContext
    
    init(_ context: WebLinkContext) {
        self.context = context
    }
    
    @TagBuilder
    func render(_ req: Request) -> Tag {
        A(context.label)
            .href(context.url)
    }
}

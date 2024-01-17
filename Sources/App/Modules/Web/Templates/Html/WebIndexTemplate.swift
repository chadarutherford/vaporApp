//
//  WebIndexTemplate.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import SwiftHtml
import Vapor

public struct WebIndexTemplate: TemplateRepresentable {
    public var context: WebIndexContext
    
    public init(_ context: WebIndexContext) {
        self.context = context
    }
    
    @TagBuilder
    public func render(_ req: Request) -> Tag {
        Html {
            Head {
                Meta()
                    .charset("utf-8")
                Meta()
                    .name(.viewport)
                    .content("width=device-width, initial-scale=1")
                
                Link(rel: .shortcutIcon)
                    .href("/img/favicon.ico")
                    .type("image/x-icon")
                
                Link(rel: .stylesheet)
                    .href("https://cdn.jsdelivr.net/gh/feathercms/feather-core@1.0.0-beta.44/feather.min.css")
                
                Link(rel: .stylesheet)
                    .href("/css/web.css")
                
                Title(context.title)
            }
            
            Body {
                Main {
                    Section {
                        H1(context.message)
                    }
                    .class("wrapper")
                }
            }
        }
        .lang("en-US")
    }
}

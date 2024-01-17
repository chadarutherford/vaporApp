//
//  Request+Template.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import Vapor

public extension Request {
    var templates: TemplateRenderer { .init(self) }
}

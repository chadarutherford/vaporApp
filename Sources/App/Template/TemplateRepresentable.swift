//
//  TemplateRepresentable.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import SwiftSgml
import Vapor

public protocol TemplateRepresentable {
    @TagBuilder
    func render(_ req: Request) -> Tag
}

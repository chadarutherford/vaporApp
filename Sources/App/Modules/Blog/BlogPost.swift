//
//  BlogPost.swift
//
//
//  Created by Chad Rutherford on 1/17/24.
//

import Foundation

struct BlogPost: Codable {
    let title: String
    let slug: String
    let image: String
    let excerpt: String
    let date: Date
    let category: String?
    let content: String
}

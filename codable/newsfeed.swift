//
//  newsfeed.swift
//  codable
//
//  Created by Mihir Vyas on 16/04/20.
//  Copyright © 2020 Mihir Vyas. All rights reserved.
//

import Foundation

struct NewsFeed: Codable {
    var status: String =  ""
    var totalResults: Int = 0
    var articles:[Articles]?
}

struct Articles:Codable {
    var author: String?
    var title: String?
    var description: String?
    var url:String?
    var urlToImage:String?
    var publishedAt:String?
    var content:String?
}

//
//  YoutubeSearchResults.swift
//  Netflix Clone
//
//  Created by Ahmad Rusdani on 24/01/23.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let etag: String
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let etag: String
    let id: IdVideoElemet
    let kind: String
}

struct IdVideoElemet: Codable {
    let kind, videoId: String
}

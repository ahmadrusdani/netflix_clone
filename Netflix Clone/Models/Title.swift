//
//  TvModel.swift
//  Netflix Clone
//
//  Created by Ahmad Rusdani on 09/01/23.
//

import Foundation

struct Title: Codable {
    let id: Int
    let original_language: String?
    let overview, poster_path: String?
    let media_type: String?
    let genre_ids: [Int]
    let release_date: String?
    let vote_average: Double
    let vote_count: Int?
    let original_title: String?
    let original_name: String?
}

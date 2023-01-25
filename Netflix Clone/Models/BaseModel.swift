//
//  BaseModel.swift
//  Netflix Clone
//
//  Created by Ahmad Rusdani on 09/01/23.
//

import Foundation

struct BaseResponse<T: Codable>: Codable {
    let results: [T]
}

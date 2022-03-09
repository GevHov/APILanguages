//
//  Result.swift
//  APILanguages
//
//  Created by Gevorg Hovhannisyan on 10.02.22.
//

import Foundation

struct Result: Codable {
    
    let status: Int
    let message: String?
    let data: [Datum]?
}

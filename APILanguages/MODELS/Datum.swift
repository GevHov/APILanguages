//
//  Datum.swift
//  APILanguages
//
//  Created by Gevorg Hovhannisyan on 10.02.22.
//

import Foundation

struct Datum: Codable {
    
    let id: Int
    let code: String?
    let active: Bool
    let defaults: Bool
    let translation: String?
    let created: String?
    
}

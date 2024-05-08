//
//  LeituraCuriosity.swift
//  Curiosity-app
//
//  Created by Lawson Beltrame on 08/05/24.
//

import Foundation

struct LeituraCuriosity: Codable, Identifiable {
  
    let id: String
    let text: String
    let source: String
    let source_url: String
    let language: String
    let permalink: String

}

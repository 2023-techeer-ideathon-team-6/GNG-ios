//
//  Content.swift
//  GNG-ios
//
//  Created by Sean Hong on 2023/05/27.
//

import Foundation

struct Content: Identifiable {
    var id = UUID()
    
    var itemId: Int
    var title: String
    var imageUrl: String
    var starCount: Int
    var maxBid: Int
}

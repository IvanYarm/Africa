//
//  VideoModel.swift
//  Africa
//
//  Created by Ivan Yarm on 6/19/24.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(self.id)"
    }
}

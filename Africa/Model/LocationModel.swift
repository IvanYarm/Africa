//
//  LocationModel.swift
//  Africa
//
//  Created by Ivan Yarm on 6/19/24.
//

import Foundation
import MapKit

struct LocationModel: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // computer property
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

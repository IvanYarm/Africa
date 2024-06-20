//
//  MapView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/16/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.00286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    } ()
    
    let locations: [LocationModel] = Bundle.main.decode("locations.json")
    
    //MARK: - BODY
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
        }
    }
}


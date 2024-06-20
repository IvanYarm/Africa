//
//  InsetMapView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/19/24.
//

import SwiftUI
import MapKit



struct InsetMapView: View {
    //MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    //MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing) {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                        .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                        
                    }//: Hstack
                    .padding(.horizontal, 14)
                    .padding(.vertical, 10)
                    .background(Color.black.opacity(0.4).cornerRadius(8))
                    
                    
                    }//: Navigation link
                
                }
            .frame(height: 256)
            .cornerRadius(12)
        
        
               
    }
}

#Preview {
    InsetMapView()
}

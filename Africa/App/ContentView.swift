//
//  ContentView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/15/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Propertis
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    //MARK: - Body
    
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink {
                        AnimalDetailView(animal: animal)
                    } label: {
                        AnimalListView(animals: animal)
                    }

                    
                }
            }//: List
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        }//: Navigation
    
    }
}

#Preview {
    ContentView()
}

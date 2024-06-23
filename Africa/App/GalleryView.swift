//
//  GalleryView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/16/24.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    

    let animal: [AnimalModel] = Bundle.main.decode("animals.json")
    
    @State private var selectesAnimal: String = "lion"
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    let heptic = UIImpactFeedbackGenerator(style: .medium)
    
    func gridSwitch() {
        self.gridLayout = Array(repeating: GridItem(.flexible()), count: Int(self.gridColumn))
    }
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            //Image
            Image(selectesAnimal)
                .resizable().scaledToFill()
                .clipShape(.circle)
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
            //Slider
            Slider(value: $gridColumn, in: 2...4, step: 1)
                .padding(.horizontal)
                .onChange(of: gridColumn) {
                    gridSwitch()
                    heptic.impactOccurred()
                }
            
            //Grid
            VStack(alignment: .center, spacing: 30, content: {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10, content: {
                    ForEach(animal) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(.circle)
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture(perform: {
                                self.selectesAnimal = item.image
                                heptic.impactOccurred(intensity: 4)
                            })
                            
                    }//:Loop
                })//:Grid
                .animation(.easeIn)
            })//: Vstack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
            .onAppear(perform: {
                gridSwitch()
            })
            
        }//:Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
    }
}

//#Preview {
//    GalleryView()
//}

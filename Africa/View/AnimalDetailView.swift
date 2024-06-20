//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/17/24.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 20, content: {
                //Hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor
                        .frame(height: 3)
                        .offset(y:24))
                //Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(Color.accentColor)
                    .padding(.horizontal)
                //Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")
                    
                    InsetGelleryVew(animal: self.animal)
                }
                .padding(.horizontal)
                
                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // Discription
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(self.animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                
                // map
                Group {
                    HeadingView(headingImage: "map", headingText: "National parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                
                //Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalLinkView(animal: self.animal)
                }
                
            })//: Vstack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//: Scroll
    }
}

//#Preview {
//    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
//    AnimalListView(animals: <#T##AnimalModel#>[0])
//}

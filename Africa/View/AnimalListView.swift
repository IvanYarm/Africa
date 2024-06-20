//
//  AnimalListView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/16/24.
//

import SwiftUI

struct AnimalListView: View {
    //MARK: - PROPERTIES
    let animals: AnimalModel
    //MARK: - BODY
    
    var body: some View {
        HStack(alignment:.center,spacing: 16) {
            Image(animals.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(animals.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animals.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 8)
                
            })//Vstack
        }//:Hstack
    }
}

//#Preview {
//   static let animal: [AnimalModel] = Bundle.main.decode("animals.json")
//    
//    AnimalListView(animals: animal[2])
//}

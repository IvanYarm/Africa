//
//  InsetGelleryVew.swift
//  Africa
//
//  Created by Ivan Yarm on 6/17/24.
//

import SwiftUI

struct InsetGelleryVew: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    
    //MARK: - BODY
   
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center, spacing: 15, content: {
                ForEach(animal.gallery, id: \.self) { picture in
                    Image(picture)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//: Loop
                
            })//: Stack
        }//:Scroll
      
        
        
    }
    
}

//#Preview {
//
//    InsetGelleryVew()
//}

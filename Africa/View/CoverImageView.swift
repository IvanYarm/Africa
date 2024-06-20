//
//  CoverImageView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/16/24.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - Properties
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    //MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: Loop
        }//: tab
        .tabViewStyle(PageTabViewStyle())
        
        
    }
}

//MARK: - Preview
#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 400))
}

//
//  ExternalLinkView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/19/24.
//

import SwiftUI

struct ExternalLinkView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    
    //MARK: - BODY
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                    Image(systemName: "arrow.up.right.square")
                }
            }//: Hstack
        }//: Box
        
    }
}
//
//#Preview {
//    ExternalLinkView()
//}

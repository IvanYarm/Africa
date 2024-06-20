//
//  InsetFactView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/19/24.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }//: Loop
            }//: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        }//: GroupBox
    }
}
//
//#Preview {
//    InsetFactView()
//}

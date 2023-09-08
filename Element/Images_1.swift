//
//  Images_1.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct Images_1: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/image")!
    @State private var openSheet: Bool = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("An Example for Images")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                Image("landscape_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Text("Landscape")
                Spacer()
            }
        }
        .navigationTitle("Images")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button(action: {openSheet=true}){
            Image(systemName: "book")
            }
            }.padding()
             .sheet(isPresented: $openSheet) {
            SFSafariView(searchURL: $searchURL)
         }
    }
}




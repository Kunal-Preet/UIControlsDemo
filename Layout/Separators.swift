//
//  Separators.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct Separators: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/divider")!
    @State private var openSheet: Bool = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("An Example for Separators")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                Text("Text above separator")
                Divider().frame(height: 5).background(Color.gray)
                Text("Text below seperator")
                
                Spacer()
            }
        }
        .navigationTitle("Separator")
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




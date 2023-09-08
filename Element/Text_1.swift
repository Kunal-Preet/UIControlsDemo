//
//  Text_1.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct Text_1: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/text")!
    @State private var openSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("An Example for Text")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                Text("This is Example 1")
                    .font(.title)
                
                Text("This is Example 2")
                    .font(.system(size: 12, weight: .light, design: .serif))
                    .italic()
                
                Text("This is Example 3")
                    .frame(width: 100)
                    .lineLimit(1)
                
                Spacer()
            }
        }
        .navigationTitle("Text")
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




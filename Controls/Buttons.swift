//
//  Buttons.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct Buttons: View {
    
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/button")!
    @State private var openSheet: Bool = false
    
    @State var pressed = "You have not pressed the button"
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("An Example for Buttons")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                Button("Press Me",action: {
                    pressed = "You Pressed the button"
                }).buttonStyle(.bordered)
               
                Spacer()
                
                Text("Action")
                Text("\(pressed)")
                    .font(.subheadline)
                    .fontWeight(.black)
                
                Spacer()
            }
            .font(.title)
        }
        .navigationTitle("Buttons")
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




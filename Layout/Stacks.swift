//
//  Stacks.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI


struct Stacks: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/building-layouts-with-stack-views")!
    @State private var openSheet: Bool = false
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("An Example for Stacks")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                Text("Z stack").font(.headline)
                ZStack(alignment: .bottomLeading) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 50)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width:50, height: 100)
                }
                .border(Color.green, width: 1)
                Text("H stack").font(.headline)
                HStack(
                    alignment: .top,
                    spacing: 10
                ) {
                    ForEach(
                        1...5,
                        id: \.self
                    ) {
                        Text("Item \($0)")
                    }
                }
                Text("V stack").font(.headline)
                VStack(
                    alignment: .leading,
                    spacing: 10
                ) {
                    ForEach(
                        1...5,
                        id: \.self
                    ) {
                        Text("Item \($0)")
                    }
                }
                Spacer()
            }
        }
        .navigationTitle("Stacks")
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




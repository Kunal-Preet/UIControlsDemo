//
//  Grids.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct Grids: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/grid")!
    @State private var openSheet: Bool = false
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("An Example for Grids")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                Grid(alignment: .bottom, horizontalSpacing: 1, verticalSpacing: 1) {
                    GridRow {
                        Text("Row-1")
                        ForEach(0..<3) { _ in Color.gray }
                    }
                    GridRow {
                        Text("Row-2")
                        ForEach(0..<5) { _ in Color.pink }
                    }
                    GridRow {
                        Text("Row-3")
                        ForEach(0..<2) { _ in Color.blue }
                    }
                }
                Spacer()
            }
        }
        .navigationTitle("Grids")
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




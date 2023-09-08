//
//  Indicators.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI



struct Indicators: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/progressview?changes=_9")!
    @State private var openSheet: Bool = false
    @State private var progress = 0.5

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("An Example for Indicators")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                ProgressView(value: progress)
                            Button("More") { progress += 0.05 }
                Spacer()
            }
        }.navigationTitle("Indicators")
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

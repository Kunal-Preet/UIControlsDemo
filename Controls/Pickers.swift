//
//  Pickers.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct Pickers: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/picker")!
    @State private var openSheet: Bool = false
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry, blackCurrent
        var id: Self { self }
    }

    @State private var selectedFlavor: Flavor = .chocolate
    
   
    
    var body: some View {
        NavigationView {
            VStack {
                Text("An Example for Pickers")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                List {
                    Picker("Flavor", selection: $selectedFlavor) {
                        Text("Chocolate").tag(Flavor.chocolate)
                        Text("Vanilla").tag(Flavor.vanilla)
                        Text("Strawberry").tag(Flavor.strawberry)
                        Text("Black Current").tag(Flavor.blackCurrent)
                    }
                }
               
            }
        }.navigationTitle("Pickers")
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

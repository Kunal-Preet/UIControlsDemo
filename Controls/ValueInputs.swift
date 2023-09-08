//
//  ValueInputs.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct ValueInputs: View {
  
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/tutorials/swiftui-concepts/creating-a-custom-input-control-that-binds-to-a-value")!
    @State private var openSheet: Bool = false
    @State private var rating: Int = 0
    private var maxRating = 5
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("An Example for Value Inputs")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(20)
                HStack {
                            ForEach(1..<maxRating + 1, id: \.self) { value in
                                Image(systemName: "star")
                                    .symbolVariant(value <= rating ? .fill : .none)
                                    .foregroundColor(.accentColor)
                                    .onTapGesture {
                                        if value != rating {
                                            rating = value
                                        } else {
                                            rating = 0
                                        }
                                    }
                            }
                        }
                
                Spacer()
            }
            
        }
        .navigationTitle("Value Inputs")
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

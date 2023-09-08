//
//  Shapes_1.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct Shapes_1: View {
    @State private var searchURL: URL = URL(string: "https://developer.apple.com/documentation/swiftui/shape")!
    @State private var openSheet: Bool = false
    var body: some View {
        NavigationView {
                VStack {
                    Text("An Example for Shapes")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(20)
                            Rectangle()
                                .fill(.gray)
                                .frame(width: 100, height: 100)

                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.red)
                                .frame(width: 100, height: 100)

                            Capsule()
                                .fill(.green)
                                .frame(width: 100, height: 50)

                            Ellipse()
                                .fill(.blue)
                                .frame(width: 100, height: 50)

                            Circle()
                                .fill(.orange)
                                .frame(width: 100, height: 50)
                    Spacer()
                        }

                            
        }.navigationTitle("Shapes")
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




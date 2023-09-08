//
//  ControlRows.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI


struct ControlRows: View {
    @State var showAlert = true
    var body: some View {
        
        /// Building a section for Control group rows
        Section {
            NavigationLink(destination: Buttons()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Buttons")
                
            }
            
            NavigationLink(destination: ValueInputs()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Value Inputs")
                
            }
            
            NavigationLink(destination: Pickers()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Pickers")
                
            }
            
            NavigationLink(destination: Indicators()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Indicators")
                
            }
         

            
            
        }header: {
            Text("CONTROLS")
                .font(.headline)
                .foregroundColor(.black)
        }
    }
    
}
struct ControlRows_Previews: PreviewProvider {
    static var previews: some View {
        ControlRows()
    }
}

struct ExtractedView: View {
    let icon: String
    let title: String
    var body: some View {
        Image(systemName: icon)
            .foregroundColor(.brown)
        Text(title)
      
    }
}

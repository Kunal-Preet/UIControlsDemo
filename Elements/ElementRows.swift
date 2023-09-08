//
//  ElementRows.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct ElementRows: View {
    var body: some View {
        
        // @State Examples Section
        Section {
            NavigationLink(destination: Images()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Buttons")
                
            }
            
            NavigationLink(destination: Shapes()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Value Inputs")
                
            }
            
            NavigationLink(destination: Text()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Pickers")
                
            }
            
        
            
            
        }header: {
            Text("CONTROLS")
                .font(.headline)
                .foregroundColor(.black)
        }
    }
    
}
struct ElementRows_Previews: PreviewProvider {
    static var previews: some View {
        ElementRows()
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

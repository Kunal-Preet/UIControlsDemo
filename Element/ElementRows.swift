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
        
        /// Building a section for Elementl group rows
        Section {
            NavigationLink(destination: Images_1()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Images")
                
            }
            
            NavigationLink(destination: Shapes_1()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Shapes")
                
            }
            
            NavigationLink(destination: Text_1()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Text")
                
            }
            
          
            
            
        }header: {
            Text("ELEMENTS")
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




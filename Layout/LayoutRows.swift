//
//  LayoutRows.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation
import SwiftUI

struct LayoutRows: View {
    var body: some View {
        
        /// Building a section for Layout group rows
        Section {
            NavigationLink(destination: Separators()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Separator")
                
            }
            
            NavigationLink(destination: Grids()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Grid")
                
            }
            
            NavigationLink(destination: Stacks()) {
                ExtractedView(icon: "gearshape.circle.fill", title: "Stack")
                
            }
            
          
            
            
        }header: {
            Text("LAYOUT")
                .font(.headline)
                .foregroundColor(.black)
        }
    }
    
}
struct LayoutRows_Previews: PreviewProvider {
    static var previews: some View {
        LayoutRows()
    }
}




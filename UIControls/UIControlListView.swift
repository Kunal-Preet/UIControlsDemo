//
//  ContentView.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import SwiftUI

struct UIControlListView : View {
    @ObservedObject var viewModel: UIControlListViewModel
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    ControlRows()   ///Displays Control Group Rows
                    ElementRows()   ///Displays Element Group Rows
                    LayoutRows()    ///Displays Layout Group Rows
                    }.listStyle(.insetGrouped)
                
                }.navigationTitle("Components")
            ///Adds a search bar
                .searchable(text:$viewModel.searchTerm,
                            placement: .navigationBarDrawer(displayMode: .automatic),
                            prompt: "Search for components")
            }
        }
    }

struct UIControlListView_Previews: PreviewProvider {
    static var previews: some View {
        UIControlListView(viewModel: UIControlListViewModel())
    }
}

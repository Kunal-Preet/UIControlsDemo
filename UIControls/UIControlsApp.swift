//
//  UIControlsApp.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import SwiftUI

@main
struct UIControlsApp: App {
    var body: some Scene {
        WindowGroup {
            UIControlListView(viewModel: UIControlListViewModel())
        }
    }
}

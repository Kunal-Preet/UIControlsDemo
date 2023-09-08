//
//  UIControlListViewModel.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import Foundation

import SwiftUI

final class UIControlListViewModel: ObservableObject {
    @Published var searchTerm: String = ""
}

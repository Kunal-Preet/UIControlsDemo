//
//  SFSafariView.swift
//  UIControls
//
//  Created by Kunal Preet on 29/10/22.
//

import SwiftUI
import SafariServices

/// To showcase SFSafariViewController from UIKit.
struct SFSafariView: UIViewControllerRepresentable {
    typealias UIViewControllerType = SFSafariViewController
    @Binding var searchURL: URL


    func makeUIViewController(context: UIViewControllerRepresentableContext<SFSafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: searchURL)
    }

    func updateUIViewController(_ safariViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariView>) {
    }
}

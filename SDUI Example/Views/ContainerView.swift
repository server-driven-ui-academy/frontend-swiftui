//
//  ContainerView.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 09/03/22.
//

import SwiftUI

struct ContainerView: View {
    var title: String
    var endpoint: String
    
    var body: some View {
        NavigationView {
            PageView(title: title, endpoint: endpoint)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


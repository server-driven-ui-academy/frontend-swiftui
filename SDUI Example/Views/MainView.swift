//
//  MainView.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 16/03/22.
//

import SwiftUI

struct MainView: View {
    let tabBar = UITabBar.appearance()

    init() {
        tabBar.barTintColor = .systemBackground
        tabBar.backgroundColor = .systemBackground
    }
    
    var body: some View {
        TabView {
            ContainerView(title: "Tab 1", endpoint: "")
                .tabItem {
                    Label("Tab 1", systemImage: "house")
                }
            
            ContainerView(title: "Tab 2", endpoint: "")
                .tabItem {
                    Label("Tab 2", systemImage: "cart")
                }
        }
    }
}

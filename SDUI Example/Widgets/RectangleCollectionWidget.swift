//
//  RectangleCollectionWidget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 15/03/22.
//

import SwiftUI

struct RectangleCollectionWidget: Widget {

    struct Item: Decodable {
        let title: String
        let text: String
        let color: String
        
        var id: UUID {
            UUID()
        }
    }

    let list: [Item]
    let itemAction: Action?
    
    var id: UUID {
        UUID()
    }
    
    var widgetUI: AnyView {
        AnyView(
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(list, id: \.id) { item in
                        NavigationLink(destination: PageView(title: item.title, endpoint: "\(itemAction?.url ?? "errorpage")/\(item.color)")) {
                            RectangleDisplay(title: item.title, text: item.text, color: Color(hex: item.color))
                        }
                        .disabled(itemAction?.identifier.rawValue != "SCREEN_SERVER")
                    }
                }
                .padding(.horizontal)
            }
        )
    }
}

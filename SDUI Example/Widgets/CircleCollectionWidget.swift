//
//  CircleCollectionWidget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 14/03/22.
//

import SwiftUI

struct CircleCollectionWidget: Widget {

    struct Item: Decodable {
        let title: String
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
                HStack {
                    ForEach(list, id: \.id) { item in
                        NavigationLink(destination: PageView(title: item.title, endpoint: "\(itemAction?.url ?? "errorpage")/\(item.color)")) {
                            CircleDisplay(title: item.title, color: Color(hex: item.color))
                        }
                        .disabled(itemAction?.identifier.rawValue != "SCREEN_SERVER")
                    }
                }
                .padding(.horizontal)
            }
        )
    }
}

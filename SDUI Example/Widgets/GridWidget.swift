//
//  GridWidget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 16/03/22.
//

import SwiftUI

struct GridWidget: Widget {

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
        
        return AnyView(
            GridStack(list: list) { item in
                NavigationLink(destination: PageView(title: item.title, endpoint: "\(itemAction?.url ?? "errorpage")/\(item.color)")) {
                    GridRectangle(color: Color(hex: item.color))
                }
                .disabled(itemAction?.identifier.rawValue != "SCREEN_SERVER")
                
            }
            .padding(.horizontal)
        )
    }
}

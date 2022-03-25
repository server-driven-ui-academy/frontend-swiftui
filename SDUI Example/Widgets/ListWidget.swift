//
//  ListWidget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 14/03/22.
//

import SwiftUI

struct ListWidget: Widget {

    struct Item: Decodable, Identifiable {
        let text: String
        
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
            VStack {
                ForEach(list, id: \.id) { item in
                    NavigationLink(destination: PageView(title: item.text, endpoint: "\(itemAction?.url ?? "errorpage")")) {
                        VStack(alignment: .leading) {
                            Text(item.text)
                                .foregroundColor(Color(.label))
                            Divider()
                        }
                    }
                    .disabled(itemAction?.identifier.rawValue != "SCREEN_SERVER")
                }
            }
            .padding(.horizontal)
        )
    }
}

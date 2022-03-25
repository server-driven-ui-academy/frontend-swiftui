//
//  BannerWidget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 14/03/22.
//

import SwiftUI

struct BannerWidget: Widget {
    
    let title: String
    let color: String
    let titleColor: String
    let itemAction: Action?
    
    var id: UUID {
        UUID()
    }
    
    var widgetUI: AnyView {
        AnyView(
            NavigationLink(destination: PageView(title: title, endpoint: "\(itemAction?.url ?? "errorpage")/\(color)")) {
                BannerDisplay(title: title, color: Color(hex: color), titleColor: Color(hex: titleColor))
                    .padding(.horizontal)
            }
            .disabled(itemAction?.identifier.rawValue != "SCREEN_SERVER")
        )
    }
}


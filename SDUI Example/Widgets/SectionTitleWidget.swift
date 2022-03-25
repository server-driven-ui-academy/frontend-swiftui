//
//  SectionTitleWidget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 14/03/22.
//

import SwiftUI

struct SectionTitleWidget: Widget {
    
    let title: String
    
    var id: UUID {
        UUID()
    }
    
    var widgetUI: AnyView {
        AnyView(
            SectionTitle(title: title)
                .padding(.horizontal)
        )
    }
}

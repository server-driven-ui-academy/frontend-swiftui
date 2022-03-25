//
//  Widget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 11/03/22.
//

import SwiftUI

protocol Widget: Decodable {
    var id: UUID { get }
    var widgetUI: AnyView { get }
}

enum WidgetIdentifier: String, Decodable {
    case banner = "BANNER"
    case circleCollection = "CIRCLE_COLLECTION"
    case rectangleCollection = "RECTANGLE_COLLECTION"
    case list = "LIST"
    case sectionTitle = "SECTION_TITLE"
    case grid = "GRID"

    var metatype: Widget.Type {
        switch self {
        case .banner:
            return BannerWidget.self
        case .circleCollection:
            return CircleCollectionWidget.self
        case .rectangleCollection:
            return RectangleCollectionWidget.self
        case .list:
            return ListWidget.self
        case .sectionTitle:
            return SectionTitleWidget.self
        case .grid:
            return GridWidget.self
        }
        
    }
}

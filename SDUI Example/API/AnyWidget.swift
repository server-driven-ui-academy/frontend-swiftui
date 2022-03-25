//
//  AnyWidget.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 11/03/22.
//

import SwiftUI

final class AnyWidget: Decodable {

    private enum CodingKeys: CodingKey {
        case identifier
    }

    let widget: Widget?

    required init(from decoder: Decoder) throws {
        do {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(WidgetIdentifier.self, forKey: .identifier)
            self.widget = try type.metatype.init(from: decoder)
        } catch {
            self.widget = nil
        }
    }
}

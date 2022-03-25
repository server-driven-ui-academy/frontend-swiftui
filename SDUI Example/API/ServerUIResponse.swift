//
//  ServerUIResponse.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 11/03/22.
//

import SwiftUI

struct ServerUIResponse: Decodable {

    private enum CodingKeys: CodingKey {
        case widgets
    }

    let widgets: [Widget]

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.widgets = try container.decode([AnyWidget].self, forKey: .widgets).compactMap { $0.widget }
    }

    init(widgets: [Widget]) {
        self.widgets = widgets
    }
}

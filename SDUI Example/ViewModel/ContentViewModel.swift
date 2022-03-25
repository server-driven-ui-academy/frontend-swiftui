//
//  ContentViewModel.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 10/03/22.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var widgets: [Widget] = []
    
    func getUIData(endpoint: String) {
        if widgets.isEmpty {
            API.call(endpoint: "/\(endpoint)",
                     model: ServerUIResponse.self) { dataDecoded in
                self.widgets = dataDecoded.widgets
            }
        }
    }
}


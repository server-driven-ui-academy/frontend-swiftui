//
//  PageView.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 14/03/22.
//

import SwiftUI

struct PageView: View {
    @StateObject var contentViewModel = ContentViewModel()
    var title: String
    var endpoint: String
    
    var body: some View {
        Group {
            if contentViewModel.widgets.isEmpty {
                ProgressView()
            } else {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20.0) {
                        ForEach(contentViewModel.widgets, id: \.id) { widget in
                            widget.widgetUI
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }
                .navigationTitle(title)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        .onAppear {
            self.contentViewModel.getUIData(endpoint: endpoint)
        }
    }
}

//
//  GridStack.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 17/03/22.
//

import SwiftUI

struct GridStack<Content: View, T>: View {
    let list: [T]
    let rows: Int
    let columns: Int
    let content: (T) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< columns, id: \.self) { column in
                        if (2*row+column < list.count) {
                            content(list[2*row+column])
                        }
                    }
                }
            }
        }
    }

    init(list: [T], @ViewBuilder content: @escaping (T) -> Content) {
        self.list = list
        self.columns = 2
        var numberOfRows: Double = Double(list.count) / Double(self.columns)
        numberOfRows.round(.up)
        self.rows = Int(numberOfRows)
        self.content = content
    }
}

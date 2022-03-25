//
//  RectangleDisplay.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 15/03/22.
//

import SwiftUI

struct RectangleDisplay: View {
    var title: String
    var text: String
    var color: Color
    
    let size: CGFloat = 140
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: size, height: size)
                .foregroundColor(color)
            Text(title)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color(.label))
            Text(text)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: size, alignment: .leading)
                .font(.caption)
                .lineLimit(2)
                .foregroundColor(Color(.label))
        }
    }
}

struct RectangleDisplay_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDisplay(title: "Test", text: "Text Description", color: .red)
    }
}

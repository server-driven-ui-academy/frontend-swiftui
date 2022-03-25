//
//  CircleDisplay.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 09/03/22.
//

import SwiftUI

struct CircleDisplay: View {
    var title: String
    var color: Color
    let size: CGFloat = 90
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: size, height: size)
                    .foregroundColor(color)
                Text("Imagem")
                    .foregroundColor(.white)
            }
            Text(title)
                .font(.body)
                .foregroundColor(Color(.label))
        }
    }
}

struct CircleDisplay_Previews: PreviewProvider {
    static var previews: some View {
        CircleDisplay(title: "Test", color: Color.red)
    }
}

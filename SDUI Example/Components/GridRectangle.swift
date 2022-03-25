//
//  GridRectangle.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 16/03/22.
//

import SwiftUI

struct GridRectangle: View {
    let color: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(height: 180)
                .foregroundColor(color)
            Text("Imagem")
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct GridRectangle_Previews: PreviewProvider {
    static var previews: some View {
        GridRectangle(color: .red)
    }
}

//
//  BannerDisplay.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 09/03/22.
//

import SwiftUI

struct BannerDisplay: View {
    var title: String
    var color: Color
    var titleColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(maxWidth: .infinity)
                .frame(height: 140)
                .foregroundColor(color)
            Text(title)
                .foregroundColor(titleColor)
                .font(.title)
        }
    }
}

struct BannerDisplay_Previews: PreviewProvider {
    static var previews: some View {
        BannerDisplay(title: "Test", color: Color.black, titleColor: Color.white)
    }
}

//
//  CartRowView.swift
//  UnityShopper
//
//  Created by dsm 5e on 07.06.2023.
//

import SwiftUI

struct HomeTabView: View {
    
    @State var title: String
    @State var image: String
    @State var height: CGFloat = 150
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(height: height)
            .cornerRadius(15)
            .shadow(color: .black.opacity(0.1), radius: 2)
            .overlay(alignment: .bottomLeading, content: {
                Text(title.uppercased())
                    .foregroundColor(.white)
                    .customFont(font: FontManager.Raleway.semiBold)
                    .padding(15)
            })
    }
}

struct CartRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView(title: "ОФОРМИТЬ ЗАКАЗ", image: "buyer")
    }
}

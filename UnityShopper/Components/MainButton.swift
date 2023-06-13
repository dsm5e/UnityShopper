//
//  MainButton.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import SwiftUI

struct MainButtonView: View {
    
    @State var title: String
    
    var body: some View {
        Text(title)
            .customFont(font: FontManager.main, size: 14)
            .padding()
            .padding(.horizontal, 10)
            .foregroundColor(.white)
            .background(Color.gray.opacity(0.7))
            .cornerRadius(4)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButtonView(title: "asdasd")
    }
}

//
//  SwiftUIView.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

//
//  MainButton.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import SwiftUI

struct MainButtonView: View {
    
    @State var title: String
    @State var size: CGFloat = 100
    
    var body: some View {
        Text(title)
            .customFont(font: FontManager.main, size: 14)
            .frame(width: size)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray.opacity(0.7))
            .cornerRadius(4)
    }
}

struct MainButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainButtonView(title: "asdasd")
    }
}

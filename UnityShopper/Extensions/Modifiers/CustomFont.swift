//
//  CustomFont.swift
//  UnityShopper
//
//  Created by dsm 5e on 08.06.2023.
//

import SwiftUI

struct CustomFont: ViewModifier {
    var font: String
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.custom(font, size: size))
    }
}

//
//  View.swift
//  UnityShopper
//
//  Created by dsm 5e on 08.06.2023.
//

import SwiftUI

extension View {
    func customFont(font: String, size: CGFloat = 18) -> some View {
        modifier(CustomFont(font: font, size: size))
    }
}

//
//  TextFieldModifier.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//
import SwiftUI

struct textfieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .customFont(font: FontManager.Raleway.regular, size: 15)
            .textContentType(.emailAddress)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 3)
                    .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
    }
}

//
//  MakeOrderAdressView.swift
//  UnityShopper
//
//  Created by dsm 5e on 13.06.2023.
//

import SwiftUI

struct MakeOrderAdressView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isComleted: Bool = false
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var passwordConform: String = ""
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    
    @FocusState private var emailFocused: Bool
    @FocusState private var passwordFocused: Bool
    @FocusState private var passwordConformFocused: Bool
    @FocusState private var nameFocused: Bool
    @FocusState private var lastNameFocused: Bool
    @FocusState private var phoneNumberFocused: Bool
    
    var body: some View {
        
        if isComleted {
            VStack(spacing: 30) {
                Image(systemName: "exclamationmark.circle.fill")
                    .offset(y: -8)
                Text("Заказ № ### принят.")
                    .customFont(font: FontManager.main, size: 17)
                Text("Стадии выполнения заказа \nбудут отображаться в вашем профиле.")
                    .customFont(font: FontManager.main, size: 17)
                    .multilineTextAlignment(.center)
            }
            .navigationBarBackButtonHidden(false)
        } else {
            VStack {
                VStack {
                    Text("АДРЕС ДОСТАВКИ")
                        .customFont(font: FontManager.main)
                    Text("№ # # #")
                        .customFont(font: FontManager.main)
                }
                .padding(15)
                
                VStack {
                    TextField("СТРАНА", text: $email)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.emailAddress)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($emailFocused)
                    
                    TextField("ГОРОД", text: $password)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.password)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($passwordFocused)
                    
                    TextField("УЛИЦА", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.familyName)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($lastNameFocused)
                    
                    TextField("ЦЕНА", text: $phoneNumber)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.telephoneNumber)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($phoneNumberFocused)
                    
                    TextField("ДОМ", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.familyName)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($lastNameFocused)
                    
                    TextField("КВАРТИРА/ОФИС", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.familyName)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($lastNameFocused)
                    TextField("КОММЕНТАРИЙ", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.familyName)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($lastNameFocused)
                    TextField("КОНТАКТНЫЙ ТЕЛЕФОН", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.familyName)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($lastNameFocused)
                }
                .padding()
                
                Button {
                    isComleted.toggle()
                } label: {
                    MainButtonView(title: "ОФОРМИТЬ",size: 120)
                }
                .padding(.top, 40)
                Button {
                    dismiss()
                } label: {
                    Text("назад")
                        .customFont(font: FontManager.main, size: 15)
                }
                .padding(.top, 10)
                Spacer()
            }
            .navigationBarBackButtonHidden(false)
        }
    }
}

struct MakeOrderAdressView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MakeOrderAdressView()
        }
    }
}

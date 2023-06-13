//
//  RateTwoView.swift
//  UnityShopper
//
//  Created by dsm 5e on 14.06.2023.
//

import SwiftUI

struct RateTwoView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var passwordConform: String = ""
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    @State private var isSheet: Bool = false
    @State private var agreementPersonalIsChecked: Bool = false
    @State private var offerIsChecked: Bool = false
    @State private var agreementPKIsChecked: Bool = false
    @State private var isRegister: Bool = false
    
    @FocusState private var emailFocused: Bool
    @FocusState private var passwordFocused: Bool
    @FocusState private var passwordConformFocused: Bool
    @FocusState private var nameFocused: Bool
    @FocusState private var lastNameFocused: Bool
    @FocusState private var phoneNumberFocused: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                VStack(spacing: 8) {
                    Text("Твой карманный стлист")
                        .customFont(font: FontManager.main, size: 12)
                    Text("ТАРИФ № 2")
                        .customFont(font: FontManager.main, size: 17)
                        .padding(5)
                    Text("Ответьте на вопросы")
                        .customFont(font: FontManager.main, size: 12)
                }
                .padding(30)
                
                VStack {
                    TextField("ИМЯ", text: $email)
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
                    
                    TextField("ФАМИЛИЯ", text: $password)
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
                    
                    TextField("ПОЧТА", text: $passwordConform)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.newPassword)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($passwordConformFocused)
                    
                    TextField("ТЕЛЕФОН", text: $name)
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                        .textContentType(.name)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($nameFocused)
                    
                    TextField("ДАТА РОЖДЕНИЯ", text: $lastName)
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
                    
                    TextField("ДЛЯ ЧЕГО НУЖЕН ОБРАЗ?", text: $lastName)
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
                    
                    TextField("ВАШИ ПАРАМЕТРЫ .../.../...", text: $lastName)
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
                    
                    TextField("КАКАЯ ПОСАДКА БРЮК ПРЕДПОЧТИТЕЛЬНА", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 14)
                        .textContentType(.familyName)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($lastNameFocused)
                    
                    TextField("НОСИТЕ ЛИ ВЫ ОБУВЬ НА КАБЛУКЕ", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 14)
                        .textContentType(.familyName)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($lastNameFocused)

                    TextField("БЮДЖЕТ", text: $lastName)
                        .customFont(font: FontManager.Raleway.regular, size: 14)
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
                
                VStack {
                    
                    TextField("ПРЕДПОЧТИТЕЛЬНЫ ТОВАРЫ ИЗ ОДНОГО МАГАЗИНА?", text: $phoneNumber)
                        .customFont(font: FontManager.Raleway.regular, size: 14)
                        .textContentType(.telephoneNumber)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($phoneNumberFocused)
                    
                    
                    TextField("КАК ВЫ ОТНОСИТЕСЬ К ВИНТАЖУ/ РЕСЕЙЛУ", text: $phoneNumber)
                        .customFont(font: FontManager.Raleway.regular, size: 14)
                        .textContentType(.telephoneNumber)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($phoneNumberFocused)
                    
                    
                    TextField("ДОБАВИТЬ ТОВАР С ЗАКАЗОМ ИЗ-ЗА РУБЕЖА?", text: $phoneNumber)
                        .customFont(font: FontManager.Raleway.regular, size: 14)
                        .textContentType(.telephoneNumber)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($phoneNumberFocused)
                    
                    
                    TextField("КОММЕНТАРИЙ/ПОЖЕЛАНИЕ...", text: $phoneNumber)
                        .customFont(font: FontManager.Raleway.regular, size: 14)
                        .textContentType(.telephoneNumber)
                        .padding(.horizontal)
                        .padding(.vertical, 30)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .focused($phoneNumberFocused)
                }
                
            }
            .padding()
            HStack {
                Button {
                    dismiss()
                } label: {
                    MainButtonView(title: "НАЗАД")
                }
                Button {
                    
                } label: {
                    MainButtonView(title: "ВПЕРЕД")
                }
                
            }
            .padding(.bottom, 30)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct RateTwoView_Previews: PreviewProvider {
    static var previews: some View {
        RateTwoView()
    }
}

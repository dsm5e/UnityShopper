//
//  RateOneView.swift
//  UnityShopper
//
//  Created by dsm 5e on 14.06.2023.
//

import SwiftUI

struct RateOneView: View {
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
        VStack {
            VStack(spacing: 8) {
                Text("Твой карманный стлист")
                    .customFont(font: FontManager.main, size: 12)
                Text("ТАРИФ № 1")
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
                
                Text("Пришлите фото или ссылку на понравившуюся вещь")
                    .customFont(font: FontManager.main, size: 13)
                    .padding(.vertical, 10)
                
                TextField("ССЫЛКА", text: $phoneNumber)
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

                
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "icloud.and.arrow.up.fill")
                            .foregroundColor(Color.gray)
                        Text("ДОБАВИТЬ ФОТО")
                            .customFont(font: FontManager.Raleway.bold, size: 15)
                            .foregroundColor(Color.gray)
                    }
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
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct RateOneView_Previews: PreviewProvider {
    static var previews: some View {
        RateOneView()
    }
}

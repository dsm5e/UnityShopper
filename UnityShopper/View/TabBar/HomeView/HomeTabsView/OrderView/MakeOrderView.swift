//
//  MakeOrderView.swift
//  UnityShopper
//
//  Created by dsm 5e on 13.06.2023.
//

import SwiftUI

struct MakeOrderView: View {
    @State private var isRegister: Bool = false
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var passwordConform: String = ""
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    @State private var isSheet: Bool = false
    
    @FocusState private var emailFocused: Bool
    @FocusState private var passwordFocused: Bool
    @FocusState private var passwordConformFocused: Bool
    @FocusState private var nameFocused: Bool
    @FocusState private var lastNameFocused: Bool
    @FocusState private var phoneNumberFocused: Bool
    
    var body: some View {
        
        if isRegister {
            VStack(spacing: 30) {
                Image(systemName: "exclamationmark.circle.fill")
                    .offset(y: -8)
                Text("Пользователь успешно зарегистрирован!")
                    .customFont(font: FontManager.main, size: 17)
                Text("Проверьте почту, что бы\nподтвердить Email!")
                    .customFont(font: FontManager.main, size: 17)
                    .multilineTextAlignment(.center)
            }
        } else {
            VStack {
                HStack {
                    Text("ОФОРМИТЬ ЗАКАЗ \n№ # # #")
                        .customFont(font: FontManager.main)
                        .multilineTextAlignment(.center)
                }
                .padding(30)
                
                VStack {
                    TextField("НАИМЕНОВАНИЕ ТОВАРА", text: $email)
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
                    
                    TextField("ССЫЛКА НА ТОВАР", text: $password)
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
                    
                    TextField("АРТИКУЛ", text: $lastName)
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
                    
                    HStack {
                        TextField("ЦЕНА", text: $passwordConform)
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
                        
                        TextField("ВАЛЮТА", text: $name)
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
                    }
                    
                    
                    TextField("РАЗМЕР", text: $phoneNumber)
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
                    
                    TextField("ЦВЕТ", text: $lastName)
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

                    TextField("КОЛЛИЧЕСТВО", text: $lastName)
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
                HStack {
                    Image(systemName: "icloud.and.arrow.up.fill")
                        .foregroundColor(Color.gray)
                    Text("Добавить фото")
                        .customFont(font: FontManager.Raleway.regular, size: 15)
                }
                HStack {
                        Text("Добавить товар")
                            .customFont(font: FontManager.Raleway.regular, size: 10)
                    Spacer()
                        Text("Удалить товар")
                            .customFont(font: FontManager.Raleway.regular, size: 10)
                }
                .padding()
                NavigationLink {
                    MakeOrderAdressView()
                } label: {
                    MainButtonView(title: "Далее",size: 120)
                }
                .padding(.top, 40)
            }
        }
    }
}

struct MakeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MakeOrderView()
        }
    }
}

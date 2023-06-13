//
//  BuyerView.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import SwiftUI

struct BuyerAcceptView: View {
    
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
        
        if isRegister {
            VStack(spacing: 8) {
                Image(systemName: "exclamationmark.circle.fill")
                    .padding(.bottom, 20)
                Text("Заявка № ### принята.")
                    .customFont(font: FontManager.main, size: 17)
                Text("Статус: на рассмотреннии.")
                    .customFont(font: FontManager.main, size: 17)
                
                Text("Как только заявка будет одобрена, \nВаш личный профиль станет активным\n и Вы сможете начать принимать заказы.")
                    .customFont(font: FontManager.main, size: 17)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
            }
        } else {
            VStack {
                VStack(spacing: 8) {
                    Text("ЗАЯВКА")
                        .customFont(font: FontManager.main)
                    Text("№ ###")
                        .customFont(font: FontManager.main)
                    
                }
                .padding(30)
                
                VStack {
                    TextField("EMAIL", text: $email)
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
                    
                    TextField("ИМЯ", text: $password)
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
                    
                    TextField("ФАМИЛИЯ", text: $passwordConform)
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
                    
                    TextField("СТРАНА", text: $lastName)
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
                    
                    TextField("ГОРОД", text: $phoneNumber)
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
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "icloud.and.arrow.up.fill")
                                .foregroundColor(Color.gray)
                            Text("Фото пасспорта")
                                .customFont(font: FontManager.Raleway.bold, size: 15)
                                .foregroundColor(Color.gray)
                        }
                    }
                    .padding(30)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Button {
                            self.agreementPersonalIsChecked.toggle()
                        } label: {
                            Image(systemName: agreementPersonalIsChecked ? "checkmark.square.fill" : "square")
                                .foregroundColor(.gray)
                            Text("Соглашение на обработку персональных данных")
                                .customFont(font: FontManager.Raleway.regular, size: 12)
                        }
                        
                        Button {
                            self.offerIsChecked.toggle()
                        } label: {
                            Image(systemName: offerIsChecked ? "checkmark.square.fill" : "square")
                                .foregroundColor(.gray)
                            Text("Договор оферты")
                                .customFont(font: FontManager.Raleway.regular, size: 12)
                        }
                        
                        Button {
                            self.agreementPKIsChecked.toggle()
                        } label: {
                            Image(systemName: agreementPKIsChecked ? "checkmark.square.fill" : "square")
                                .foregroundColor(.gray)
                            Text("Соглашение ПК")
                                .customFont(font: FontManager.Raleway.regular, size: 12)
                        }
                    }
                }
                .padding()
                
                Button {
                    isRegister.toggle()
                } label: {
                    MainButtonView(title: "Регистрация")
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct BuyerView_Previews: PreviewProvider {
    static var previews: some View {
        BuyerAcceptView()
    }
}

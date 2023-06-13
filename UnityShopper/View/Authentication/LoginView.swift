//
//  LoginView.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("log_Status") var log_Status: Bool?
    @Environment(\.dismiss) var dismiss
    @State var isRootView: Bool = true
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSheet: Bool = false
    @State private var isLogin: Bool = false
    
    @FocusState private var emailFocused: Bool
    @FocusState private var passwordFocused: Bool
    
    
    var body: some View {
        VStack {
            HStack {
                Text("ВХОД В ЛИЧНЫЙ КАБИНЕТ")
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
                
                
                
                SecureField("ПАРОЛЬ", text: $password)
                    .customFont(font: FontManager.Raleway.regular, size: 15)
                    .textContentType(.password)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(
                        RoundedRectangle(cornerRadius: 3)
                            .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                    .focused($passwordFocused)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
            .padding()
            HStack {
                Button {
                    isSheet.toggle()
                } label: {
                    Text("Забыли пароль?")
                        .customFont(font: FontManager.main, size: 15)
                }
                .sheet(isPresented: $isSheet, content: {
                    ForgotPasswordView()
                })
                .padding(.horizontal)
                .padding(.leading, 5)
                Spacer()
            }
            HStack(spacing: 30) {
                NavigationLink {
                    MakeOrderView()
                } label: {
                    MainButtonView(title: "Вход")
                }
                .onChange(of: isLogin) { newValue in
                    log_Status?.toggle()
                }
                
                NavigationLink {
                    RegistrationView()
                } label: {
                    MainButtonView(title: "Регистрация")
                }
            }
            .padding(.top, 40)
            
            Button {
                dismiss()
            } label: {
                Text("На главную")
                    .customFont(font: FontManager.main, size: 15)
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            LoginView()
        }
    }
}

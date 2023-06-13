//
//  ForgotPasswordView.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @FocusState private var emailFieldIsFocused: Bool
    @State private var email: String = ""
    @State private var passIsSend: Bool = false
    
    var body: some View {
        
        if passIsSend {
            HStack {
                Image(systemName: "exclamationmark.circle.fill")
                    .offset(y: -8)
                Text("ССЫЛКА ДЛЯ ВОССТАНОВЛЕНИЯ \nПАРОЛЯ ОТПРАВЛЕНА НА EMAIL.")
                    .customFont(font: FontManager.main, size: 15)
            }
        } else {
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
                        .focused($emailFieldIsFocused)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                    
                    Button {
                        passIsSend.toggle()
                    } label: {
                        MainButtonView(title: "Отправить")
                    }
                    .disabled(email.isEmpty)
                    .padding(.top, 40)
        
                }
                .padding()
            }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}

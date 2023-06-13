//
//  StylistView.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import SwiftUI

struct StylistView: View {
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack {
                VStack(spacing: 15) {
                    Text("Твой карманный стилист")
                        .customFont(font: FontManager.main, size: 12)
                    HomeTabView(title: "Выбрать тариф", image: "stylistPage")
                    
                    Text("Больше не нужно тратить время на поиски понравившейся вещи или составление капсульного гардероба. Наша команда стилистов поможет вам создать образы мечты с учетом ваших параметров, образа жизни и финансов. ")
                        .customFont(font: FontManager.main, size: 12)
                        .multilineTextAlignment(.center)
                    
                    Text("КАК ЭТО РАБОТАЕТ?")
                        .customFont(font: FontManager.main, size: 12)
                        .padding(.vertical, 20)
                    
                    VStack {
                        VStack {
                            HStack {
                                Text("1")
                                    .customFont(font: FontManager.Raleway.Italic.regular, size: 20)
                                    .padding()
                                Text("ЗАПОЛНИТЕ АНКЕТУ")
                                    .customFont(font: FontManager.main, size: 15)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .multilineTextAlignment(.center)
                            }
                            
                            Text("Пройдите небольшой опрос с указанием ваших параметров, предпочтений и бюджета.")
                                .customFont(font: FontManager.main, size: 12)
                                .padding(.bottom, 20)
                        }
                        
                        VStack {
                            HStack {
                                Text("2")
                                    .customFont(font: FontManager.Raleway.Italic.regular, size: 20)
                                    .padding()
                                Text("ПОМОЩЬ СТИЛИСТА")
                                    .customFont(font: FontManager.main, size: 15)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Text("В течении 4 часов профессиональный стилист поможет вам отыскать понравившуюся вещь или составить капсульный гардероб с учетом вашей анкеты.")
                                .customFont(font: FontManager.main, size: 12)
                                .padding(.bottom, 20)
                        }
                        
                        VStack {
                            HStack(alignment: .center) {
                                Text("3")
                                    .customFont(font: FontManager.Raleway.Italic.regular, size: 20)
                                    .padding(.horizontal, 20)
                                Text("ОФОРМИТЕ ЗАКАЗ")
                                    .customFont(font: FontManager.main, size: 15)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Text("Пройдите небольшой опрос с указанием ваших параметров, предпочтений и бюджета.")
                                .customFont(font: FontManager.main, size: 12)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 20)
                        }

                        
                    }
                    .multilineTextAlignment(.center)
                    .background(Color.gray.opacity(0.2))
                    
                    Text("ТАРИФЫ")
                        .customFont(font: FontManager.main, size: 12)
                        .padding()

                    NavigationLink {
                        RateOneView()
                    } label: {
                        Image("bag")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 135)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.2), radius: 2)
                            .overlay(alignment: .bottomLeading, content: {
                                Text("Поиск вещи \n 4999 РУБ.".uppercased())
                                    .foregroundColor(.black)
                                    .customFont(font: FontManager.Raleway.semiBold, size: 12)
                                    .padding(15)
                            })
                    }

                    NavigationLink {
                        RateTwoView()
                    } label: {
                        Image("gold")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 135)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.2), radius: 2)
                            .overlay(alignment: .bottomLeading, content: {
                                Text("Составление образа \n 1499 РУБ.".uppercased())
                                    .foregroundColor(.black)
                                    .customFont(font: FontManager.Raleway.semiBold, size: 12)
                                    .padding(15)
                            })
                    }

                    Image("shoes")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 135)
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.2), radius: 2)
                        .overlay(alignment: .bottomLeading, content: {
                            Text("Составление капсульного \nгардероба\n 4999 РУБ.".uppercased())
                                .foregroundColor(.black)
                                .customFont(font: FontManager.Raleway.semiBold, size: 12)
                                .padding(15)
                        })

                    

                }
                .padding()
                
                Button {
                    dismiss()
                } label: {
                    Text("назад")
                        .customFont(font: FontManager.main, size: 15)
                }
                .padding(.top, 10)
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct StylistView_Previews: PreviewProvider {
    static var previews: some View {
        StylistView()
    }
}

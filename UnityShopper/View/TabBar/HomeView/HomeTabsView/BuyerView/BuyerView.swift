//
//  BuyerAcceptView.swift
//  UnityShopper
//
//  Created by dsm 5e on 13.06.2023.
//

import SwiftUI

struct BuyerView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            VStack(spacing: 15) {
                Text("Станьте частью команты Unity.Shopper!")
                    .customFont(font: FontManager.main, size: 12)
                Text("Начните карьеру в сфере моды с удобным графиком и стабильным доходом!")
                    .customFont(font: FontManager.main, size: 12)
                    .multilineTextAlignment(.center)
            HomeTabView(title: "", image: "buyerAccept")
            
                Text("ДЛЯ ЭТОГО НУЖНО:")
                    .customFont(font: FontManager.main, size: 15)
                    .foregroundColor(.white)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.6))
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("•   Оставить заявку")
                        .customFont(font: FontManager.Raleway.semiBold, size: 10)
                    Text("•   Наша команда свяжется с вами для уточнения деталей")
                        .customFont(font: FontManager.Raleway.semiBold, size: 10)
                    Text("•   После того, как заявка будет одобрена, поздравляем - Вы в команде!")
                        .customFont(font: FontManager.Raleway.semiBold, size: 10)
                }


            }
            .padding()

            NavigationLink {
                BuyerAcceptView()
            } label: {
                MainButtonView(title: "Подать заявку")
            }
            .padding(.top, 40)
            Button {
                dismiss()
            } label: {
                Text("назад")
                    .customFont(font: FontManager.main, size: 15)
            }
            .padding(.top, 10)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BuyerAcceptView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BuyerView()
        }
    }
}

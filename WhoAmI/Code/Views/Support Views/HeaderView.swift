//
//  HeaderView.swift
//  WhoAmI
//
//  Created by Ali Can Kayaaslan on 28.03.2023.
//

import SwiftUI

struct HeaderView: View {
    
    var appModel : AppModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("self")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(5)
                    .background(Circle())
                .shadow(radius: 5)
                Spacer()
            }
            
            Text(appModel.portfolio.name)
                .font(Montserrat.bold.font(size: 17))
                .padding(.top , 8)
            Text(appModel.portfolio.role)
                .font(Montserrat.mediumItalic.font(size: 18))
                .opacity(0.85)
                .padding(.top, -2)
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                Text(appModel.portfolio.location)
                    .font(Montserrat.medium.font(size: 17))
            }.padding(.top, 10)
                .opacity(0.45)
            Text(appModel.portfolio.description)
                .font(Montserrat.italic.font(size: 16))
                .opacity(0.7)
                .padding(.top, 24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}

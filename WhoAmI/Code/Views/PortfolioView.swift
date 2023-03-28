//
//  ContentView.swift
//  WhoAmI
//
//  Created by Ali Can Kayaaslan on 27.03.2023.
//

import SwiftUI

struct PortfolioView: View {
    
    //MARK:- Variables
    var appModel : AppModel = AppModel()
    
    //Mark:- Views
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skill: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 15)
                    
                    ExperiencesView(experiences: appModel.portfolio.experiences)
                        .padding(.top, 20 )
                    
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
    

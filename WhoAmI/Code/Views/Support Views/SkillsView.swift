//
//  SkillsView.swift
//  WhoAmI
//
//  Created by Ali Can Kayaaslan on 28.03.2023.
//

import SwiftUI

struct SkillsView: View {
    
    var skill : [Skill]
    var width : CGFloat
    
    @State var showSkills = true
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Skills")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
            
            if(showSkills) {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skill) { skill in
                        SkillView(skill: skill, width: width / 3 - 15)
                    }
                }.padding(.top, 20)
            }
            
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillsView(skill: AppModel().portfolio.skills, width: 400)
                .padding(10)
        }
    }
}

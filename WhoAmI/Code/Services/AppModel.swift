//
//  AppModel.swift
//  WhoAmI
//
//  Created by Ali Can Kayaaslan on 28.03.2023.
//

import Foundation

class AppModel : ObservableObject {
    var portfolio : Portfolio = Portfolio(name: "Ali Can Kayaaslan", role: "iOS Developer", description: "Passionate with iOS Developing, Sports and Music. I'm also love Technology.", location: "Istanbul, TR", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),
        Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "WatchOS", image: "applewatch"),
        Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),
        Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays"),
    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "Freelance", role: "iOS Developer", duration: "Present"),
        Experience(id: UUID().uuidString, companyName: "Vitrin Sanal Market", role: "Markaeting Manager", duration: "2021 - Present"),
        Experience(id: UUID().uuidString, companyName: "MonAjans", role: "Marketing Manager", duration: "2020 - 2021"),
        Experience(id: UUID().uuidString, companyName: "MonAjans", role: "Marketing Specialist", duration: "2018 - 2020")
    ])
}

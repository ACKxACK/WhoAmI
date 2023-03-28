//
//  Portfolio.swift
//  WhoAmI
//
//  Created by Ali Can Kayaaslan on 28.03.2023.
//

import Foundation

struct Skill : Identifiable {
    var id : String
    var skillName : String
    var image : String
}

struct Experience : Identifiable {
    var id : String
    var companyName : String
    var role : String
    var duration : String
    
}

struct Portfolio {
    let name : String
    let role : String
    let description : String
    let location : String
    
    let skills : [Skill]
    let experiences : [Experience]
}

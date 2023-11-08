//
//  Superhero.swift
//  HeroWidgetApp
//
//  Created by Onur on 8.10.2023.
//

import Foundation


struct SuperHero: Identifiable, Codable {
    
    let name: String
    let realName: String
    let image: String
    var id: String {image}

}


let ironman = SuperHero(name: "Ironman", realName: "Tony Stark", image: "ironman")
let batman = SuperHero(name: "Batman", realName: "Bruce Wayne", image: "batman")
let spiderman = SuperHero(name: "Spiderman", realName: "Peter Parker", image: "spiderman")

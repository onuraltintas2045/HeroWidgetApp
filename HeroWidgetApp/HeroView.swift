//
//  HeroView.swift
//  HeroWidgetApp
//
//  Created by Onur on 8.10.2023.
//

import SwiftUI

struct HeroView: View {
    let hero: SuperHero
    
    var body: some View {
        
        HStack{
            CircularImageView(image: Image(hero.image))
                .frame(width: 100, height: 100, alignment: .center)
                .padding(.leading, 30)
            Spacer()
            VStack{
                Text(hero.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                Text(hero.realName)
            }
            Spacer()
            
        }.frame(width: UIScreen.main.bounds.width, alignment: .center)
        
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: batman)
    }
}

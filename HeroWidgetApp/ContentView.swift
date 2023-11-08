//
//  ContentView.swift
//  HeroWidgetApp
//
//  Created by Onur on 8.10.2023.
//

import SwiftUI
import WidgetKit
let superHeroArray = [spiderman, ironman, batman]

struct ContentView: View {
    @AppStorage("hero",store: UserDefaults(suiteName: "group.com.onuraltintas.HeroWidgetApp"))
    var heroData: Data = Data()
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
    }
    
    func saveToDefaults(hero: SuperHero){
        let dispatchGroup = DispatchGroup()

        if let heroData = try? JSONEncoder().encode(hero){
            self.heroData = heroData
            dispatchGroup.enter()
            WidgetCenter.shared.reloadTimelines(ofKind: "widgetHero")
            dispatchGroup.leave()
            

            dispatchGroup.notify(queue: .main) {
                // Tüm işlemler tamamlandı, closeApp işlemini çağır
                closeApp()
            }
        }
        
    }
    
    func closeApp() {
        exit(0)
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

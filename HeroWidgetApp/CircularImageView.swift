//
//  CircularImageView.swift
//  HeroWidgetApp
//
//  Created by Onur on 8.10.2023.
//

import SwiftUI

struct CircularImageView: View {
    var image : Image
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Rectangle())
            .overlay(Rectangle()
                .stroke(Color
                    .purple, lineWidth: 5))
            .shadow(radius: 5)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("batman"))
    }
}

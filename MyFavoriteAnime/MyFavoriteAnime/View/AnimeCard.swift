//
//  AnimeCard.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI

struct AnimeCard: View {
    
    var anime: Anime
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinates: anime.locationCoordinate).edgesIgnoringSafeArea(.top).frame(height: 250)
                AnimePosterBorder(image: anime.image).offset(y: -150).padding(.bottom, -150)
                Text(anime.name).font(.system(size: 40)).bold()
            }
        }.background(Image("app-background").blur(radius: 5))
    }
}

struct AnimeCard_Previews: PreviewProvider {
    static var previews: some View {
        AnimeCard(anime: animes[0])
    }
}

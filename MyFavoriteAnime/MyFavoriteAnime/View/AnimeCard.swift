//
//  AnimeCard.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI
/* detailed view for each item */
struct AnimeCard: View {
    
    var anime: Anime
    
    var body: some View {
        ScrollView {
                VStack {
                    MapView(anime: anime, coordinates: anime.locationCoordinate).edgesIgnoringSafeArea(.top).frame(height: 250)
                    AnimePosterBorder(image: anime.image)
                        .offset(y: -150)
                        .padding(.bottom, -220)
                    Text(anime.name)
                        .font(.system(size: 35))
                        .bold()
                    Divider()
                    AnimeDesciptionRow(anime: anime)
                }.navigationTitle("\(anime.name)")
        }.background(.gray).opacity(0.75)
            .background(Image("\(anime.backgroundImageName)").blur(radius: 3))
    }
}

struct AnimeCard_Previews: PreviewProvider {
    static var previews: some View {
        AnimeCard(anime: animes[0])
    }
}

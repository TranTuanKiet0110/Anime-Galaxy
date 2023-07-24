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
                AnimePosterBorder(image: anime.image).offset(y: 50).padding(.bottom, 20)
                Text(anime.name).font(.system(size: 40)).bold()
            }
        }
    }
}

struct AnimeCard_Previews: PreviewProvider {
    static var previews: some View {
        AnimeCard(anime: animes[0])
    }
}

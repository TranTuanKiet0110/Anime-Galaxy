//
//  AnimeRow.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI
/* row view for each item in navigation list */
struct AnimeRow: View {
    
    var anime: Anime
    
    var body: some View {
        HStack {
            anime.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width-310, height: 140,alignment: .center)
                .clipShape(Rectangle())
                .overlay(Rectangle()
                    .stroke(Color(.white), lineWidth: 4))
                .shadow(color: .purple, radius: 3).padding([.top, .bottom, .trailing])
            VStack {
                Text(anime.name)
                    .font(.system(size: 15))
                    .fontWeight(.bold).multilineTextAlignment(.center).padding(.bottom)
                RatingView(anime: anime)
            }.frame(width: 150)
        }
    }
}

struct AnimeRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AnimeRow(anime: animes[0]).previewLayout(.fixed(width: 300, height: 70))
            AnimeRow(anime: animes[1]).previewLayout(.fixed(width: 300, height: 70))
        }
    }
}

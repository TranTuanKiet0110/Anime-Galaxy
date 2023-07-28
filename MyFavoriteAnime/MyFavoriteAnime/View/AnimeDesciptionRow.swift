//
//  AnimeDesciptionRow.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 28/07/2023.
//

import SwiftUI

struct AnimeDesciptionRow: View {
    
    var anime: Anime
    
    var body: some View {
        VStack {
            HStack {
                Text("Other names: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                Text(anime.details.otherNames)
                    .multilineTextAlignment(.leading)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
            
            HStack {
                Text("Plot: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                Text(anime.details.plot)
                    .multilineTextAlignment(.leading)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct AnimeDesciptionRow_Previews: PreviewProvider {
    static var previews: some View {
        AnimeDesciptionRow(anime: animes[0]).previewLayout(.fixed(width: 300, height: 70))
    }
}

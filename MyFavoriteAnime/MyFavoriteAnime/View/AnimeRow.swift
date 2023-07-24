//
//  AnimeRow.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI

struct AnimeRow: View {
    
    var anime: Anime
    
    var body: some View {
        HStack {
            anime.image.resizable().frame(width: UIScreen.main.bounds.width-310, height: 140,alignment: .center).padding([.top, .bottom, .trailing])
            Text(anime.name).font(.system(size: 15)).fontWeight(.bold).multilineTextAlignment(.center)
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

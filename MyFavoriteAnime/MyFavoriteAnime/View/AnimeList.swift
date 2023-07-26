//
//  AnimeList.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI

struct AnimeList: View {

    @State private var searchText = ""
    
    var body: some View {
            List{
                if searchResults.isEmpty {
                    Text("Sorry we cannot find your result!")
                        .multilineTextAlignment(.center).font(.system(size: 20)).foregroundColor(.blue)
                } else {
                    ForEach(searchResults) {
                        anime in NavigationLink{
                            AnimeCard(anime: anime)
                        } label: {
                            AnimeRow(anime: anime)
                        }
                        .navigationTitle("Anime List")
                    }
                }
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)).opacity(0.9).background(Image("app-cover-background"))
    }
    
    var searchResults: [Anime] {
        if searchText.isEmpty {
            return animes
        } else {
            return animes.filter {$0.name.contains(searchText)}
        }
    }
}

struct AnimeList_Previews: PreviewProvider {
    static var previews: some View {
        AnimeList()
    }
}

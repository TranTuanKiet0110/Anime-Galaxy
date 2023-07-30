//
//  AnimeList.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI

struct AnimeList: View {
    @AppStorage("isDark") private var isDark = false
    @State private var searchText = ""
    @State private var isOn = false
    
    var body: some View {
            List{
                Toggle("Show 5 stars rating animes", isOn: $isOn).toggleStyle(SwitchToggleStyle(tint: .green))
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
                    .preferredColorScheme(isDark ? .dark : .light)
                }
            }.toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
                    Button(action: {isDark.toggle()}, label: {isDark ? Label("Dark",systemImage: "sun.max.fill") : Label("Dark",systemImage: "moon.fill")})
                }
            }.environment(\.colorScheme, isDark ? .dark : .light).searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)).opacity(0.9).background(Image("app-cover-background"))
    }
    
    var searchResults: [Anime] {
        if searchText.isEmpty && isOn == false {
            return animes
        } else if searchText.isEmpty && isOn == true {
            return animes.filter {$0.details.rating == 5
            }
        } else if !(searchText.isEmpty) && isOn == true {
            return animes.filter {
                $0.name.contains(searchText) && $0.details.rating == 5
            }
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

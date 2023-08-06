/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Tuan Kiet
  ID: 3879300
  Created  date: 23/07/2023
  Last modified: 06/08/2023
  Acknowledgement: https://github.com/TomHuynhSG/SSET-Contact-List-iOS
*/

import SwiftUI

/* navigation list view */
struct AnimeList: View {
    @AppStorage("isDark") private var isDark = false //state of light mode and dark mode
    @State private var searchText = "" //search text when first view the page
    @State private var isOn = false //state of filter
    
    var body: some View {
            List{
                Toggle("Show 5 stars rating animes", isOn: $isOn).toggleStyle(SwitchToggleStyle(tint: .green)) // filter option
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
                } //light mode and dark mode button on toolbar
            }.environment(\.colorScheme, isDark ? .dark : .light)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            .opacity(0.9).background(Image("app-cover-background"))
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
    } //cases for search bar and light/dark mode
}

struct AnimeList_Previews: PreviewProvider {
    static var previews: some View {
        AnimeList()
    }
}

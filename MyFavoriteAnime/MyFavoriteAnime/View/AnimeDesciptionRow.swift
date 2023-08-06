/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Tuan Kiet
  ID: 3879300
  Created  date: 28/07/2023
  Last modified: 06/08/2023
  Acknowledgement: https://github.com/TomHuynhSG/SSET-Contact-List-iOS
*/

import SwiftUI
/* description view for each item in detailed view */
struct AnimeDesciptionRow: View {
    var anime: Anime
    
    var body: some View {
        VStack {
            HStack {
                Text("Other names: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                Text(anime.details.otherNames)
                    .multilineTextAlignment(.leading).frame(width: UIScreen.main.bounds.width - 110)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
            
            HStack {
                Text("Author: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                Text(anime.details.author)
                    .multilineTextAlignment(.leading).frame(width: UIScreen.main.bounds.width - 110)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
            
            HStack {
                Text("Rating: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                RatingView(anime: anime)
                    .multilineTextAlignment(.leading).frame(width: UIScreen.main.bounds.width - 110)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
            
            HStack {
                Text("Plot: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                Text(anime.details.plot)
                    .multilineTextAlignment(.leading).frame(width: UIScreen.main.bounds.width - 110)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
            
            HStack {
                Text("Studio's name: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                Text(anime.details.studioName)
                    .multilineTextAlignment(.leading).frame(width: UIScreen.main.bounds.width - 110)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
            
            HStack {
                Text("Studio's address: ").font(.system(size: 20)).multilineTextAlignment(.center).bold().frame(width: 100)
                Text(anime.details.studioAddress)
                    .multilineTextAlignment(.leading).frame(width: UIScreen.main.bounds.width - 110)
            }.padding(.top).frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct AnimeDesciptionRow_Previews: PreviewProvider {
    static var previews: some View {
        AnimeDesciptionRow(anime: animes[0]).previewLayout(.fixed(width: 300, height: 70))
    }
}

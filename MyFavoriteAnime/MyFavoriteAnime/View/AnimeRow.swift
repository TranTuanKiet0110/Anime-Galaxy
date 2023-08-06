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

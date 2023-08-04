//
//  RatingView.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 30/07/2023.
//

import SwiftUI
/* rating view for each item in navigation list view */
struct RatingView: View {
    var anime: Anime
    
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1, id: \.self) { number in image(for: number).foregroundColor(number > anime.details.rating ? offColor : onColor)
            }
        }
    
    }
    
    func image(for number: Int) -> Image {
        if number > anime.details.rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(anime: animes[0])
    }
}

//
//  AnimePosterBorder.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI

struct AnimePosterBorder: View {
    
    var image: Image
    
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 300).clipShape(Circle()).overlay(Circle().stroke(Color(.white), lineWidth: 4)).shadow(color: .blue, radius: 7)
    }
}

struct AnimePosterBorder_Previews: PreviewProvider {
    static var previews: some View {
        AnimePosterBorder(image: Image("testing"))
    }
}

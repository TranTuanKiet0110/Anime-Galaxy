//
//  Anime.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import Foundation
import SwiftUI
import CoreLocation
struct Anime: Identifiable, Codable{
    var id: Int
    var name: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

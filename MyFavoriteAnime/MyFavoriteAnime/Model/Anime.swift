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
    
    var details: Details
    
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}

struct Details: Codable {
    var otherNames: String
    var plot: String
}

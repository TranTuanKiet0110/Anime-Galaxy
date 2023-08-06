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
    
    var backgroundImageName: String
    
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
    var author: String
    var rating: Int
    var plot: String
    var studioName: String
    var studioAddress: String
}

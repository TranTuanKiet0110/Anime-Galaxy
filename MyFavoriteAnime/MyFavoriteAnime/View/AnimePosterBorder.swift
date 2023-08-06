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
/* poster border for each item */
struct AnimePosterBorder: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.white), lineWidth: 4))
            .shadow(color: .blue, radius: 7)
    }
}

struct AnimePosterBorder_Previews: PreviewProvider {
    static var previews: some View {
        AnimePosterBorder(image: Image("testing"))
    }
}

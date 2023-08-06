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
/* custom alert view when clicking the info button in WelcomeView */
struct CustomAlertView: View {
    
    @Binding var shownAlert: Bool
    
    var body: some View {
        VStack{
            Text("Tran Tuan Kiet - s3879300").font(.system(size: 20)).fontWeight(.bold).foregroundColor(.white).multilineTextAlignment(.center)
            Text("Bachelor of IT").foregroundColor(.white).multilineTextAlignment(.center).padding(.bottom, 20.0)
            Divider()
            Button("Close"){
                shownAlert.toggle()
            }.padding(.top).frame(width: UIScreen.main.bounds.width-100, height:20).foregroundColor(.red).font(.system(size: 20)) //button to close the view
        }.frame(width: UIScreen.main.bounds.width-100, height: 160).background(.black.opacity(0.5)).cornerRadius(12).clipped()
    }
}

struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView(shownAlert: .constant(false))
    }
}

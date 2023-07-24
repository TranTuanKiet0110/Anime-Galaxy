//
//  CustomAlertView.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI

struct CustomAlertView: View {
    
    @Binding var shownAlert: Bool
    
    var body: some View {
        VStack{
            Text("Tran Tuan Kiet - s3879300").font(.system(size: 20)).fontWeight(.bold).foregroundColor(.white).multilineTextAlignment(.center)
            Text("Bachelor of IT").foregroundColor(.white).multilineTextAlignment(.center).padding(.bottom, 20.0)
            Divider()
            Button("Close"){
                shownAlert.toggle()
            }.padding(.top).frame(width: UIScreen.main.bounds.width-100, height:20).foregroundColor(.red).font(.system(size: 20))
        }.frame(width: UIScreen.main.bounds.width-100, height: 160).background(.black.opacity(0.5)).cornerRadius(12).clipped()
    }
}

struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView(shownAlert: .constant(false))
    }
}

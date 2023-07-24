//
//  ContentView.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 23/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var shownAlert = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("app-cover-background").blur(radius: 3)
                VStack {
                    Image("rmit-logo-white").resizable().aspectRatio(contentMode: .fit)
                        .padding(.all, 25.0).frame(width: 350.0, alignment: .center)
                    Image("app-logo").resizable().aspectRatio(contentMode: .fit).padding(15.0).frame(width: 200, alignment: .center)
                    Text("Anime Galaxy").font(.custom("Retro Gaming", size: 40)).fontWeight(.bold).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.bottom, 10.0).frame(width: UIScreen.main.bounds.width)
                    Text("No Anime, No Life!").font(.custom("Retro Gaming", size: 20)).fontWeight(.bold).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.bottom, 20.0)
                    NavigationLink(destination: AnimeList()) {
                        Text("Explore").frame(width: 200, height: 60).background(ZStack{
                            Color(hue: 1.0, saturation: 0.064, brightness: 0.38)
                            RoundedRectangle(cornerRadius: 16, style: .continuous).foregroundColor(.white).blur(radius: 3)
                        }).clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    }.foregroundColor(.cyan).font(.system(size: 20, weight: .semibold, design: .rounded)).shadow(color: Color(hue: 1.0, saturation: 0.064, brightness: 0.38), radius: 20,x: 20, y: 20)
                        .shadow(color: Color(red: 1.0, green: 0.988, blue: 0.988), radius: 20,x: -20, y: -20)
                    Button(){
                        shownAlert.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill").foregroundColor(.white).font(.system(size:22))
                    }.offset(x: 145, y: 50)
                }.blur(radius: shownAlert ? 30 : 0)
                
                if shownAlert {
                    CustomAlertView(shownAlert: $shownAlert)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

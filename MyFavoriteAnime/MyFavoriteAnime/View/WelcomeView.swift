//
//  WelcomeView.swift
//  MyFavoriteAnime
//
//  Created by Kiet Tran Tuan on 04/08/2023.
//

import SwiftUI
/*the welcome view when user first access the app */
struct WelcomeView: View {
    
    @State var slogan = ["No Anime, No Life!"]
    
    @State var shownAlert = false
    @State var currentIndex: Int = 2
    @State var sloganText: [AnimateText] = []
    @State var endAnimation = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("app-cover-background")
                    .blur(radius: 3) //background image of welcome view
                VStack {
                    Image("rmit-logo-white")
                        .resizable().aspectRatio(contentMode: .fit)
                        .padding(.all, 25.0).frame(width: 350.0, alignment: .center)
                    Image("app-logo")
                        .resizable().aspectRatio(contentMode: .fit).padding(15.0).frame(width: 200, alignment: .center)
                    Text("Anime Galaxy")
                        .font(.custom("Retro Gaming", size: 40)).fontWeight(.bold).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.bottom, 10.0).frame(width: UIScreen.main.bounds.width)
                    VStack() {
                        HStack() {
                            ForEach(sloganText) { text in
                                Text(text.text).offset(y: text.offset)
                            }
                            .font(.custom("Retro Gaming", size: 20))
                            .fontWeight(.bold).foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20.0)
                        }
                        .offset(y: endAnimation ? -100 : 0)
                        .opacity(endAnimation ? 0 : 1)
                    }
                    NavigationLink(destination: AnimeList()) {
                        Text("Explore")
                            .frame(width: 200, height: 60).background(ZStack{
                            Color(hue: 1.0, saturation: 0.064, brightness: 0.38)
                            RoundedRectangle(cornerRadius: 16, style: .continuous).foregroundColor(.white).blur(radius: 3)
                        }).clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    }
                    .foregroundColor(.cyan).font(.system(size: 20, weight: .semibold, design: .rounded)).shadow(color: Color(hue: 1.0, saturation: 0.064, brightness: 0.38), radius: 20,x: 20, y: 20)
                        .shadow(color: Color(red: 1.0, green: 0.988, blue: 0.988), radius: 20,x: -20, y: -20) // button to change view
                    Button(){
                        shownAlert.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill").foregroundColor(.white).font(.system(size:22))
                    }.offset(x: 145, y: 50) //info button
                }.blur(radius: shownAlert ? 30 : 0)
                
                if shownAlert {
                    CustomAlertView(shownAlert: $shownAlert)
                }
            }.onAppear(perform: {
                currentIndex = 0
            })
            .onChange(of: currentIndex) { newValue in
                getSpilitedText(text: slogan[currentIndex]) {
                    withAnimation(.easeInOut(duration: 1)) {
                        endAnimation.toggle()
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                        slogan.removeAll()
                        endAnimation.toggle()
                        
                        withAnimation(.easeInOut(duration: 0.6)) {
                            if currentIndex < (slogan.count - 1) {
                                currentIndex += 1
                            } else {
                                currentIndex = 0
                            }
                        }
                    }
                }
            }
        }
    }
    
    func getSpilitedText(text: String, completion: @escaping ()->()) {
        for(index, character) in text.enumerated() {
            sloganText.append(AnimateText(text: String(character)))
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.03) {
                withAnimation(.easeInOut(duration: 0.5)) {
                    sloganText[index].offset = 0
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

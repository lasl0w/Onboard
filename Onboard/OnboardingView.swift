//
//  OnboardingView.swift
//  Onboard
//
//  Created by tom montgomery on 1/11/25.
//

import SwiftUI

struct OnboardingView: View {
    
    // @Binding so it can change the value - moved to TabView area
    //@Binding var onboarded: Bool
    
    // dynamic
    var title: String
    var desc: String
    var image: String?
    
    var body: some View {
        
        // think of it as building the layers - image on top of the gradient
        ZStack {
            // bottom layer = image
            VStack {
                Image(image ?? "")
                    .padding(.top, 70)
                // padding is low enough so we can see it being melded with the gradient & good text overlap

                Spacer()
                // the 2 to 1 spacer technique. moving it up 1/3 of the way. still overlaps some. DONT DO THAT, instead....
                // use a single space, then add padding so that it's consistent across screensizes
                
            }

            
            // Gradient - top left to bottom right diagonal - (0,0) to (1,1)
//            LinearGradient(colors: [Color.green, Color.blue], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1))
//                .ignoresSafeArea()
            LinearGradient(colors: [Color.clear, Color.myBackground], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1))
                .ignoresSafeArea(edges: .all)
            
            // LinearGradient with stops = finer control of gradient transition
//            LinearGradient(stops: [
//                Gradient.Stop(color: Color.red, location: 0.2),
//                Gradient.Stop(color: Color.blue, location: 0.4),
//                Gradient.Stop(color: Color.purple, location: 0.9),
//            ],
//                           startPoint: UnitPoint(x: 0, y: 0),
//                           endPoint: UnitPoint(x: 1, y: 1))
//            .ignoresSafeArea(edges: .all)
            
            // Text
            VStack {
                Spacer()
                Text(title)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 140)
                    .foregroundStyle(.indigo)
                Text(desc)
                    .padding(.top, 10)
                //.multilineTextAlignment(.center)
                //"Did you know that you can get 300% smarter by getting a good night's sleep?"
                Spacer()

            }
            .padding(.horizontal, 20)
            .multilineTextAlignment(.center)
            
        }
        

    }
}

#Preview {
    // for the sake of the preview, we pass in false
    OnboardingView(title: "Restful sleep will give you superpowers", desc: "Take our 7 day sleep challenge to learn how to fall asleep faster and stay asleep longer", image: "onboardingart1")
}

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
        VStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
            Text(desc)
                .multilineTextAlignment(.center)
            //"Did you know that you can get 300% smarter by getting a good night's sleep?"
            Spacer()

                
        }
    }
}

//#Preview {
//    // for the sake of the preview, we pass in false
//    OnboardingView(onboarded: Binding.constant(false))
//}

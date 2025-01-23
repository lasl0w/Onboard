//
//  OnboardingView.swift
//  Onboard
//
//  Created by tom montgomery on 1/11/25.
//

import SwiftUI

struct OnboardingView: View {
    
    // @Binding so it can change the value
    @Binding var onboarded: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("Hi There!")
                .font(.largeTitle)
            Text("Did you know that you can get 300% smarter by getting a good night's sleep?")
                .multilineTextAlignment(.center)
            Spacer()
            Button(action: {
                // set onboarded flag to true
                onboarded = true
            }, label: {
                Text("Get Started")
                    .bold()
                    .padding()
                // foreground Style, not font
                    .foregroundStyle(Color.white)
                // background padding set to a comomon button size by default
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            .padding()
                
        }
    }
}

#Preview {
    // for the sake of the preview, we pass in false
    OnboardingView(onboarded: Binding.constant(false))
}

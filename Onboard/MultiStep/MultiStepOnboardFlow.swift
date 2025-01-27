//
//  MultiStepOnboardFlow.swift
//  Onboard
//
//  Created by tom montgomery on 1/22/25.
//

import SwiftUI

struct MultiStepOnboardFlow: View {
    
    // do the binding here instead of on the calling view. why?
    @Binding var onboarded: Bool
    
    var body: some View {
        
        TabView {
            // multiple steps is as simple as boom boom boom!
            OnboardingView(title: "Step 1", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Step 1")
                }
            OnboardingView(title: "Step 2", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Step 2")
                }
            OnboardingView(title: "Step 3", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "")
                .overlay(alignment: .bottom) {
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
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Step 3")
                }
            // LAST TAB HAS A BUTTON
            /// multiple options
            /// 1) hide the button in the OnboardingView, but only show it if the tabItem tag is 3
            /// 2) do a .overlay mod on Step 3
        }
        .tabViewStyle(PageTabViewStyle())
        // default tabview style is bottom nav tabs, but we want onboardy swipes
    }
}

#Preview {
    MultiStepOnboardFlow(onboarded: Binding.constant(false))
}

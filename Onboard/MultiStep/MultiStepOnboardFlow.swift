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
        
        ZStack {
            // set the color for the entire view by adding it to a zstack. all steps.
            Color("MyBackground")
                .ignoresSafeArea(edges: .all)
            TabView {
                // multiple steps is as simple as boom boom boom!
                OnboardingView(title: "Restful sleep will give you superpowers", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "onboardingart1")

                OnboardingView(title: "Feel happier and more productive", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "onboardingart2")

                OnboardingView(title: "Deepen your relationships", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "onboardingart3")
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
                        .padding(.bottom, 50)
                    }

                // LAST TAB HAS A BUTTON
                /// multiple options
                /// 1) hide the button in the OnboardingView, but only show it if the tabItem tag is 3
                /// 2) do a .overlay mod on Step 3
            }
            .tabViewStyle(PageTabViewStyle())
        }
        // default tabview style is bottom nav tabs, but we want onboardy swipes
    }
}

#Preview {
    MultiStepOnboardFlow(onboarded: Binding.constant(false))
}

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
    // add state to track the selectedTab
    @State private var selectedTab = 0
    
    var body: some View {
        
        ZStack {
            // set the color for the entire view by adding it to a zstack. all steps.
            Color("MyBackground")
                .ignoresSafeArea(edges: .all)
            // use the tag+selectedTab pattern. The tag populates the selection, just gotta choose what you bind it to
            TabView(selection: $selectedTab) {
                // multiple steps is as simple as boom boom boom!
                OnboardingView(title: "Restful sleep will give you superpowers", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "onboardingart1")
                    .tag(0)
                    .overlay(alignment: .bottom) {
                        onboardingButton(buttonText: "Next") {
                            withAnimation {
                                selectedTab = 1
                            }
                        }
                    }

                OnboardingView(title: "Feel happier and more productive", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "onboardingart2")
                    .tag(1)
                    .overlay(alignment: .bottom) {
                        onboardingButton(buttonText: "Next") {
                            withAnimation {
                                selectedTab = 2
                            }
                        }
                    }

                OnboardingView(title: "Deepen your relationships", desc: "Did you know that you can get 300% smarter by getting a good night's sleep?", image: "onboardingart3")
                    .tag(2)
                    .overlay(alignment: .bottom) {
                        onboardingButton(buttonText: "Get Started") {
                            withAnimation {
                                onboarded = true
                            }
                        }
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

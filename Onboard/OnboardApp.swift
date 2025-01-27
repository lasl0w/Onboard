//
//  OnboardApp.swift
//  Onboard
//
//  Created by tom montgomery on 1/11/25.
//

import SwiftUI

@main
struct OnboardApp: App {
    
    // want it to persist across sessions, SO use appstorage
    @AppStorage("onboarded") private var onboarded = false
    // gets deleted if the app is deleted
    
    var body: some Scene {
        WindowGroup {
            
            if onboarded {
                // take them right to the app
                ContentView()
            }
            else {
                // go to onboarding flow
                MultiStepOnboardFlow(onboarded: $onboarded)
                // pass in the value from AppStorage
            }
        }
    }
}

//
//  onboardingButton.swift
//  Onboard
//
//  Created by tom montgomery on 2/18/25.
//

import SwiftUI

struct onboardingButton: View {
    
    var buttonText: String
    // passing in a function. no params and it returns nothing
    var buttonFunc: () -> Void = { }
    
    var body: some View {
        
        Button {
            // set onboarded flag to true
            //onboarded = true
            // instead of our action, we call buttonFunc!
            buttonFunc()
        } label: {
            Text(buttonText)
            // do the frame early so all the later mods apply to it
                .frame(maxWidth: .infinity)
                .bold()
                .padding()
            // foreground Style, not font
                .foregroundStyle(Color.white)
            // background padding set to a comomon button size by default
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
        }
        .padding(.bottom, 50)
    }
}

//#Preview {
//    onboardingButton()
//}

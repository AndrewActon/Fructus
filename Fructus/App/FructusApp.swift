//
//  FructusApp.swift
//  Fructus
//
//  Created by Andrew Acton on 7/2/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    } //: Body
}

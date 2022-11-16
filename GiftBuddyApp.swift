//
//  GiftBuddyApp.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI
import Firebase

@main
struct GiftBuddyApp: App {
    @StateObject var dataManager = DataManager()
    
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataManager())
        }
    }
}

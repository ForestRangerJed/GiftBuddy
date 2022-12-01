//
//  ContentView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    let defaults = UserDefaults.standard
    @StateObject var  userSettings = UserSettings()
    var body: some View {
        if(defaults.bool(forKey: "IsLoggedIn") != false){
            BottomNavView().environmentObject(userSettings)
        } else {
            LoginView().environmentObject(userSettings)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

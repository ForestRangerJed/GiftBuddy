//
//  BottomNavView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 12/1/22.
//

import SwiftUI

struct BottomNavView: View {
    
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack{
            TabView{
                HomeView()
                    .tabItem(){
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                GroupView()
                    .tabItem(){
                        Image(systemName: "person.3.fill")
                        Text("Group")
                    }
                
                ProfileView().environmentObject(userSettings)
                    .tabItem(){
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                    }
            }
        }
    }
}

struct BottomNavView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavView()
    }
}

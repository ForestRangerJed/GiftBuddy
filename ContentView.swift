//
//  ContentView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TabView{
                GroupView()
                    .tabItem(){
                        Image(systemName: "person.3.fill")
                        Text("Group")
                    }
                HomeView()
                    .tabItem(){
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ProfileView()
                    .tabItem(){
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                    }
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

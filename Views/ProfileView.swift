//
//  ProfileView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    
    @EnvironmentObject var userSettings: UserSettings
    let defaults = UserDefaults.standard
    
    var body: some View {
        VStack{
            Text("Sugondese").onTapGesture {
                logout()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
    
    func logout(){
        do{
            try Auth.auth().signOut()
            defaults.set(false, forKey: "IsLoggedIn")
            userSettings.isLoggedIn = false
        }catch{
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

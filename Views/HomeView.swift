//
//  HomeView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    @State var showingPopup = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(dataManager.gifts) { gift in
                        GiftCardView(title: gift.title)
                    }
                    
                }
                .navigationTitle("Gift List")
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(DataManager())
    }
}

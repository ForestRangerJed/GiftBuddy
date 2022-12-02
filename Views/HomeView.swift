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
        
        NavigationStack{
            ZStack{
                ScrollView{
                    
                    LazyVStack{
                        ForEach(dataManager.gifts) { gift in
                            GiftCardView(title: gift.title, price: gift.price)
                        }
                        
                    }
                    .navigationTitle("Gift List")
                    .toolbar{}
                    .toolbarBackground(.gray, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.gray)
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        NavigationLink(destination: NewGiftView()){
                            FloatingButton()
                        }
                    }
                }
            }   
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(DataManager())
    }
}

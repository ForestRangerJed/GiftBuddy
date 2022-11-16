//
//  HomeView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            VStack{
                List(dataManager.gifts) { gift in
                    Text(gift.title)
                }
                .background(.gray)
                
            }
            .navigationTitle("Gift List")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:  {
                        showPopup.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    })
                    .sheet(isPresented: $showPopup) {
                        NewGiftView()
                    }
                }
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

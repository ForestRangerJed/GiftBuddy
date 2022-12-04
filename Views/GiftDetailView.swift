//
//  GiftDetailView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/23/22.
//

import SwiftUI

struct GiftDetailView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var title : String
    var price : String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
                Text(title)
                    .font(.largeTitle)
                    .bold()
            Spacer()
            
                HStack{
                    Text("Price =")
                    Text(price)
                }
               Spacer()
                
                
            }
            .navigationTitle(title)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray)
       
       
        
        
    }
}



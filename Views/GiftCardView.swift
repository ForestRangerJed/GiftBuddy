//
//  GiftCardView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/23/22.
//

import SwiftUI

struct GiftCardView: View {
    
    @State var showingPopup = false
    var title : String
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text(title)
                    .font(.headline)
                    .padding(.horizontal)
                
                Spacer()
                
                Button{
                    showingPopup = true
                } label: {
                    Image(systemName: "chevron.right")
                        .bold()
                        .padding(.horizontal)
                }
                .popover(isPresented: $showingPopup){
                    GiftDetailView()
                }
                
            }
            
                

            }.frame( maxWidth: .infinity, minHeight: 100, alignment: .leading)
            .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(24)
                .padding(.horizontal)
                .padding(.vertical, 4)
                
                
           
    }
}



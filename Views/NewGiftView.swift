//
//  NewGiftView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/15/22.
//

import SwiftUI

struct NewGiftView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newGiftTitle = ""
    @State private var newGiftPrice = ""
    @State private var newGiftLink = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.gray)
                .shadow(radius: 25)
            
            VStack{
                
                Text("New gift details")
                    .bold()
                    .font(.largeTitle)
                    .padding(.horizontal)
                
                
                VStack(spacing: 20){
                    TextField("", text: $newGiftTitle)
                        .placeholder(when: newGiftTitle.isEmpty){Text("Gift Name").bold()}
                        .foregroundColor(.white)
                    DividerView()
                    
                    TextField("", text: $newGiftPrice)
                        .placeholder(when: newGiftPrice.isEmpty){Text("Gift Price").bold()}
                        .foregroundColor(.white)
                        .keyboardType(.numberPad)
                    DividerView()
                    
                    TextField("", text: $newGiftLink)
                        .placeholder(when: newGiftLink.isEmpty){Text("Gift Link").bold()}
                        .foregroundColor(.white)
                    DividerView()
                    
                    Button {
                        dataManager.addGift(title: newGiftTitle, price: newGiftPrice, link: newGiftLink)
                        
                    } label: {
                        Text("Save")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width:150, height: 40)
                            .background(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .frame(width: 350)
            }
        }
        .frame(width: 400, height: 400)
        
    }
}

struct NewGiftView_Previews: PreviewProvider {
    static var previews: some View {
        NewGiftView()
    }
}


    

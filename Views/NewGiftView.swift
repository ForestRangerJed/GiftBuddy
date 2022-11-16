//
//  NewGiftView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/15/22.
//

import SwiftUI

struct NewGiftView: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State private var newGift = ""
    
    var body: some View {
        VStack{
            TextField("Gift Title", text: $newGift)
                .background(.white)
            
            Button {
                dataManager.addGift(title: newGift)
                
            } label: {
                Text("Save")
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
}

struct NewGiftView_Previews: PreviewProvider {
    static var previews: some View {
        NewGiftView()
    }
}

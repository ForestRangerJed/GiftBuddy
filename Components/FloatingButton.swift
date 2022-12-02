//
//  FloatingButton.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 12/2/22.
//

import SwiftUI

struct FloatingButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 65, height: 65)
                .foregroundColor(.blue)
            
            Image(systemName: "gift.circle")
            
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .padding(.horizontal)
        .shadow(radius: 15)
        .padding(.bottom)
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}

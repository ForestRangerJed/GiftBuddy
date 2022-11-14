//
//  GroupView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("This is my group view")
            }
            .toolbar{
                Button{
                    print("I got pressed")
                } label: {
                    Label("", systemImage: "person.2.badge.gearshape.fill")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray)
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}

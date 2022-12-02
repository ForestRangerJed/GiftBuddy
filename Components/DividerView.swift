//
//  DividerView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 12/2/22.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 1)
            .foregroundColor(.white)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}

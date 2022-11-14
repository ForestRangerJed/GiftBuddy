//
//  LoginView.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/14/22.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.black, .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 1000)
                .rotationEffect(.degrees(135))
            
            
            VStack(spacing: 20) {
                
                Text("Welcome 🎁")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold))
                    .offset(x: -75, y: -100)
                
                
                
                TextField("", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                        
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                SecureField("", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                        
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                
                Button{
//                    register
                } label: {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width:250, height: 40)
                        .background(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.top)
                .offset(y: 100)
                
                Button{
//                  Log in
                } label: {
                    Text("Already have an account? Login")
                        .foregroundColor(.white)
                        .bold()
                }
                .padding(.top)
                .offset(y: 110)
                
                
            }
            .frame(width: 350)
//            .onAppear{
//                Auth.auth().addStateDidChangeListener { auth, user in
//                    if user != nil {
//                        userIsLoggedIn.toggle()
//                    }
//
//                }
//            }
            
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

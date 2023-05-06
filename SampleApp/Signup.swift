//
//  Signup.swift
//  SampleApp
//
//  Created by Utsav Punia on 08/05/23.
//

import SwiftUI

struct Signup: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    var body: some View {
        
            
        VStack {
            Image("sign").resizable().frame(width:400,height: 400)
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .padding()
            
            TextField("Username", text: $username)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .border(.red, width: CGFloat(wrongUsername))
            
            
            SecureField("Password", text: $password)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .border(.red, width: CGFloat(wrongPassword))
            
            Button("Sign Up") {
                
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            
            
            //                        NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
            //                            EmptyView()
            //                        }
        }
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}

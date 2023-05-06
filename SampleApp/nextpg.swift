//
//  SwiftUIView.swift
//  SampleApp
//
//  Created by Utsav Punia on 07/05/23.
//


import SwiftUI

/*struct SwiftUIView: View {
    
    @Environment(\.isPresented) var presented;
    @State private var username: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("hello World",
                               destination: MyotherScreen());
                
                
                VStack {
                    
                    
                    HStack {
                        Image(systemName: "person").foregroundColor(.gray)
                            .padding(5)
                        TextField("Enter Username", text: $username)
                          .textFieldStyle(RoundedBorderTextFieldStyle())
                          
                        }
                    
                        .disableAutocorrection(true)
                        
                        
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        .font(Font.system(size: 17, weight: .light, design: .monospaced))
                        
                        
                    }
                        
                    
                    
                    
                        TextField(
                            "Password",
                            text: $password
                        )
                        .font(Font.system(size: 17, weight: .light, design: .monospaced))
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                        
                    
                    }
                .padding(60)
                    
             
                
                
                
                
            }
            .navigationTitle("Sample App")
            .navigationBarTitleDisplayMode(.inline)
            
//            .
        }
    }*/

struct SwiftUIView: View{
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    var body:some View{
        
        
        if showingLoginScreen{
            LoginScreen()
        }
        
        else{
           
                NavigationView {
                    ZStack {
                        
                        
                        VStack {
                            Text("Login")
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
                            
                            Button("Login") {
                                authenticateUser(username: username, password: password)
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
            }
            
        
    }
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "utsav" {
            wrongUsername = 0
            if password.lowercased() == "12345" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
    
}

struct MyotherScreen: View{
    @Environment(\.dismiss) var dismiss;
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
            VStack{
                NavigationLink("Third Pg",
                               destination: GoHome()
                               
                );

                Button("HOME") {
                    dismiss()
                }
            }
        }
        
    }
}
struct GoHome: View{
//    @Environment(\.isPresented) var presented;
    var body:some View{
        ZStack{
//        NavigationLink("HomePage",destination: presented)
        }
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
        
    }
}

//
//  ContentView.swift
//  SampleApp
//
//  Created by Utsav Punia on 06/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack {
            
            Image(systemName: " ")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(" ").padding(.bottom,10)
            
            NavigationLink(
                        
                        destination: SwiftUIView(),
                        /// 3
                        label: {
                            Text("Log In").foregroundColor(.black).underline()
                        }).padding(.top,50)
            
            NavigationLink(
                        
                        destination: Signup(),
                        /// 3
                        label: {
                            Text("SignUp").foregroundColor(.black).underline()
                        }).padding(.top,5)
            
            
                }.background(Image("="))
            
            
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

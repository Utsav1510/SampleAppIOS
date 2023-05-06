//
//  LoginScreen.swift
//  SampleApp
//
//  Created by Utsav Punia on 08/05/23.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        NavigationView {
            
            ZStack{
                Image("login") .resizable()
                    .aspectRatio(contentMode: .fit).edgesIgnoringSafeArea(.horizontal).padding(.horizontal,-20)
                
                
            }
           
            
            
        }.navigationBarTitle("Shop")
        
       
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

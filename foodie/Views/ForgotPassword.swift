//
//  ForgotPassword.swift
//  foodie
//
//  Created by Tony Egwu on 19/02/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import SwiftUI

struct ForgotPassword: View {
    var body: some View {
        VStack{
            LogoBar()
            ForgotPasswordInstruction()
            ForgotPasswordFormControlView()
//            Spacer()
        }.padding()
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}

struct ForgotPasswordInstruction:View{
    var body:some View{
        VStack(alignment:.center){
            Text("Forgot Your Password?").font(.custom("Gilroy-Bold", size: 25)).foregroundColor(.black)
            
            Text("Please provide us with your phone number to help us recover your account").font(.custom("Gilroy-Medium", size: 15)).foregroundColor(.gray).padding(.top)
        }
        
    }
}


struct ForgotPasswordFormControlView:View{
    
    @State var phone:String = ""
    
    var body:some View{
        VStack{

            
            
            TextField("Phone number", text: self.$phone)
                           .padding([.top, .leading, .bottom])
                           .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Button("Recover Account", action: self.signUp).padding()
//                .frame(width:geometry.size.width)
                .background(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
            .foregroundColor(.white).cornerRadius(5).font(.custom("Gilroy-Bold", size: 20))
                .padding(.vertical)
            
            
            
        }.padding(.vertical, 50)
    }
    
    func signUp () -> Void{
        
    }
    
}

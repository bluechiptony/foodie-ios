//
//  SignUp.swift
//  foodie
//
//  Created by Tony Egwu on 19/02/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    var body: some View {
        VStack{
            LogoBar()
            SignUpInstruction()
            SignUpFormControlView()
//            Spacer()
//            AuthGoBack()
        }.padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}


struct SignUpInstruction:View{
    var body:some View{
        VStack(alignment:.center){
            Text("Create a foodie account").font(.custom("Gilroy-Bold", size: 25)).foregroundColor(.black)
            
            Text("Please provide us with a few details to help us create your account").font(.custom("Gilroy-Medium", size: 15)).foregroundColor(.gray).padding(.top)
        }
        
    }
}

struct SignUpFormControlView:View{
    @State var email:String = ""
    @State var phone:String = ""
    @State var name:String = ""
    var body:some View{
        VStack{

            TextField("Full Name e.g Jon Snow", text: self.$name)
                           .padding([.top, .leading, .bottom])
            .textFieldStyle(PlainTextFieldStyle())
                
//                .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
            TextField("Email address", text: self.$email)
                .padding([.top, .leading, .bottom])
                .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            TextField("Phone number", text: self.$phone)
                           .padding([.top, .leading, .bottom])
                           .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Button("Create Account", action: self.signUp).padding()
//                .frame(width:geometry.size.width)
                .background(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
            .foregroundColor(.white).cornerRadius(5).font(.custom("Gilroy-Bold", size: 20))
                .padding(.vertical)
            
            
            
        }.padding(.vertical, 50)
    }
    
    func signUp () -> Void{
        
    }
    
}



struct AuthGoBack:View{
    var body:some View{
        VStack(alignment:.center){
            Text("Go Back").font(.custom("Gilroy-Bold", size: 15)).foregroundColor(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0)).padding(.top)
                       
        }
    }
}

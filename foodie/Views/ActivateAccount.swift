//
//  ActivateAccount.swift
//  foodie
//
//  Created by Tony Egwu on 19/02/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import SwiftUI

struct ActivateAccount: View {
    var body: some View {
        
        VStack{
            LogoBar()
            ActivationForm()
//            Spacer()
        }.padding()
        
    }
}

struct ActivateAccount_Previews: PreviewProvider {
    static var previews: some View {
        ActivateAccount()
    }
}


//struct AuthTitle:View{
//    var bodt:some View{
//
//    }
//}


struct ActivationForm:View{
    @State var email:String = ""
    var body:some View{
        
        VStack{
            Text("Activate your account").font(.custom("Gilroy-Bold", size: 25)).foregroundColor(.black)
            
            Text("You should receive an SMS shortly, Please enter the code provided in the text prompt to complete activation").font(.custom("Gilroy-Medium", size: 15)).foregroundColor(.gray).padding(.top)
            
            Text("Resend SMS").font(.custom("Gilroy-Bold", size: 15)).foregroundColor(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0)).padding(.top)
            
            
            VStack(alignment:.center){
                
                TextField("Activation Code", text: self.$email)
                .padding([.top, .leading, .bottom])
                .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
                    Button("Activate Account", action: self.login).padding()
                        
                        .background(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
                    .foregroundColor(.white).cornerRadius(5).font(.custom("Gilroy-Bold", size: 20))
                    
            }.padding([.top, .bottom], 15)
            
            }
            
        
    }
    
    func login() -> Void{
        
    }
}

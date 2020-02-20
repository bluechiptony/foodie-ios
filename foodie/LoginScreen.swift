//
//  ContentView.swift
//  foodie
//
//  Created by Tony Egwu on 26/01/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    @State var loggedIn:Bool = false;
    @ObservedObject var loginState  = LoginState()
    
    var body: some View {
        VStack{
            if self.loginState.loggedIn {
                MealSearcher()
            }else{
                HolderView()
            }
        }
        
    }
    
    
}


struct HolderView:View {
    
    var body: some View{
            NavigationView{
                VStack{
                    LoginImageView()
                    Spacer()
                    LoginForm()
                    }.edgesIgnoringSafeArea(.top).navigationBarHidden(true)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ActivateAccount()
        LoginScreen()
//        SignUpView()
//        RecoverPasswordView()
    }
}

struct LoginImageView: View {
    var body: some View {
        Image("login_meat")
            .resizable()
            .frame(height:350).aspectRatio(contentMode: .fit)
    }
}

struct LoginForm: View {
    @State var email:String = ""
    @State var password:String = ""
    var body: some View {
        GeometryReader{geometry in
            VStack(alignment: .leading){
                Text("Login").font(.custom("Gilroy-Bold", size: 35)).foregroundColor(.black).padding(.top)
                
                Text("Enter your login credentials")
                    .foregroundColor(Color.gray)
                
                TextField("Email address", text: self.$email)
                    .padding([.top, .leading, .bottom])
                    .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
              
                SecureField("Password", text: self.$password)
                    .textContentType(.password)
                    .padding([.top, .leading, .bottom])
                    .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    
                
                HStack{
                    Spacer()
                        NavigationLink(destination:MealSearcher()){
                            Text("Forgot Password").font(.custom("Gilroy-Bold", size: 14)).foregroundColor(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
                        }
                }.padding(.bottom)
                    VStack(alignment:.center){
                    
                            Button("Login", action: self.login).padding()
                                .frame(width:geometry.size.width)
                                .background(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
                            .foregroundColor(.white).cornerRadius(5).font(.custom("Gilroy-Bold", size: 20))
                            
                    }.padding([.top, .bottom], 15)

                Spacer()
                HStack(alignment: .center){
                    Spacer()
                    
                        Text("Dont have an account?").font(.custom("Gilroy-Bold", size: 14)).foregroundColor(.gray)
                    NavigationLink(destination:SignUp()){
                        
                        Text("Sign up").font(.custom("Gilroy-Bold", size: 14)).foregroundColor(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
                        
                    }
                        
                    Spacer()
                    
                }
                .padding()
            }
        }.padding(.horizontal, 40)
    }
    func login() -> Void {
        print(self.$email.projectedValue)
        print(self.$password.projectedValue)
        
    }
}


struct SignUpView: View {
    var body: some View{
        VStack{
            SignUpForm()
            
        }.padding(.horizontal, 40)
    }
}

struct SignUpForm:View {
    @State var emailAddress:String = ""
    var body: some View{
        GeometryReader{ geometry in
            VStack{
                Text("Sign Up").font(.custom("Gilroy-Bold", size: 35)).foregroundColor(.black)
                Text("Register for an account").font(.custom("Gilroy-Medium", size: 13)).foregroundColor(.gray)
                
                TextField("Email Address", text:self.$emailAddress).padding([.top, .leading, .bottom])
                .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
                Button("Sign Up", action: {}).padding()
                    .frame(width:geometry.size.width)
                    .background(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
                .foregroundColor(.white).cornerRadius(5).font(.custom("Gilroy-Bold", size: 20))
                Spacer()
            }
            
        }
        
    }
}


struct RecoverPasswordView: View {
    var body: some View{
        VStack{
            RecoverPasswordForm()
            
        }.padding(.horizontal, 40)
    }
}

struct RecoverPasswordForm:View {
    @State var emailAddress:String = ""
    var body: some View{
        GeometryReader{ geometry in
            VStack{
                Text("Recover Password").font(.custom("Gilroy-Bold", size: 35)).foregroundColor(.black)
                Text("Recover your password").font(.custom("Gilroy-Medium", size: 13)).foregroundColor(.gray)
                
                TextField("Email Address", text:self.$emailAddress).padding([.top, .leading, .bottom])
                .border(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
                Button("Sign Up", action: {}).padding()
                    .frame(width:geometry.size.width)
                    .background(Color(red: 249/255, green: 91/255, blue: 41/255, opacity: 1.0))
                .foregroundColor(.white).cornerRadius(5).font(.custom("Gilroy-Bold", size: 20))
                Spacer()
            }
            
        }
        
    }
}

//
//  MealSearcher.swift
//  foodie
//
//  Created by Tony Egwu on 07/02/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import SwiftUI

struct MealSearcher: View {
    var body: some View {
        VStack(alignment:.leading){
            LogoBar()
            
            Text("Search for Food near you...").font(.custom("Gilroy-Bold", size: 22)).foregroundColor(.black)
            SearchBarView()
            Spacer()
        }.padding(.horizontal, 20)
        
        
    }
}

struct MealSearcher_Previews: PreviewProvider {
    static var previews: some View {
        MealSearcher()
    }
}


struct LogoBar:View{
    var body:some View{
        HStack{
            
            HStack{
                Spacer()
                Image("foodie-logo-lg")
                .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 25.0)
                
                Spacer()
            }
        }
    }
}

struct SearchBarView:View {
    @State var searchText:String = ""
    var body:some View{
        ZStack{
            TextField("Search", text:$searchText).padding().background(Color(red:50/255, green:50/255, blue:50/255, opacity: 0.1))
                .cornerRadius(3)
        }
    }
}





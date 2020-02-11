//
//  CustomViewStuff.swift
//  foodie
//
//  Created by Tony Egwu on 07/02/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import Foundation
import SwiftUI


struct FoodieTextFieldStyle:TextFieldStyle {
//    public func _body(configuration:TextField <Self._Label>) -> some View {
//        configuration
//            .padding([.top, .leading, .bottom], 10)
//            .background(RoundedRectangle(cornerRadius: 0).strokeBorder(Color.gray, lineWidth: 1))
//    }
    
    public func _body(configuration:TextField <Self._Label>) -> some View {
          VStack() {
               configuration
               Rectangle()
                    .padding()
                   .frame(height: 0.5, alignment: .bottom)
                   .foregroundColor(Color.secondary)
           }
       }
    
    
    
}

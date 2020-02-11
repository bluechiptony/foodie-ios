//
//  Extensions.swift
//  foodie
//
//  Created by Tony Egwu on 27/01/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import UIKit



struct AppColors  {
    let appOrange:UIColor = UIColor.getColor(red: 241, green: 91, blue: 41, alpha: 1)
    
    
}


extension UIColor{
    static func getColor(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat)-> UIColor{
        return UIColor(displayP3Red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}

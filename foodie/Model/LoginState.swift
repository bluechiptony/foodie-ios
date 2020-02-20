//
//  LoginState.swift
//  foodie
//
//  Created by Tony Egwu on 20/02/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import Foundation

class LoginState: ObservableObject {
    @Published var loggedIn:Bool ;
    
    
    init() {
        self.loggedIn = false;
        self.loggedIn = self.checkLoggedInState();
    }
    
    func setLoggedIn(logged:Bool) -> Void {
        self.loggedIn = logged
    }
    
    func checkLoggedInState() -> Bool {
        return false;
    }
    
    
}

//
//  Person.swift
//  VostrikovAS_HW2.6
//
//  Created by Александр Востриков on 08/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit
import Foundation

struct Person {
    
    var firstName: String
    var lastName: String
    var email: String
    var telefone: String
    
    init(firstName: String,
         lastName: String,
         email: String,
         telofon: String){
            self.firstName = firstName
            self.lastName = lastName
            self.email = email
            self.telefone = telofon
    }
    init(){
        self.firstName = "Noname"
        self.lastName = "Noname"
        self.email = "No email"
        self.telefone = "No telofon"
    }
}



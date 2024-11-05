//
//  User.swift
//  test_app_live
//
//  Created by Ian Julian Estrada Castro on 05/11/24.
//

import Foundation

struct User {
    var id = UUID()
    var name: String
    var age: Int

    func isAdult() -> Bool {
        age >= 18
    }
    
    
    
}

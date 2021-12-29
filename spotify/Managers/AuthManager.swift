//
//  AuthManager.swift
//  spotify
//
//  Created by Khurshed Umarov on 29.12.2021.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    
    struct Constants{
        static let clientID = "cc163ff932574ce8ab038851ded41abc"
        static let clientSecret = "4a93175b3f2941eb846463f667a9874d"
    }
    
    private init() {}
    
}

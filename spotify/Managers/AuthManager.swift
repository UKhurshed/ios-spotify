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
    
    public var signInUrl: URL? {
        let base = "https://accounts.spotify.com/authorize"
        let scope = "user-read-private"
        let redirectUrl = "https://www.spotify.com"
        let str = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scope)&redirect_uri=\(redirectUrl)&show_dialog=TRUE"
        return URL(string: str)
    }
    
    var isSignedIn: Bool{
        return false
    }
    
    private var accessToken: String?{
        return nil
    }
    
    private var refreshToken: String?{
        return nil
    }
    
    private var tokenExpirationDate: Date?{
        return nil
    }
    
    private var shouldRefreshToken: Bool{
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping ((Bool) -> Void)){
        
    }
    
    public func refreshAccessToken(){
        
    }
    
    public func cacheToken(){
        
    }
}

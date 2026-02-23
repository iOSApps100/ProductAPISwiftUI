//
//  Environment.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 23/02/26.
//

import Foundation

enum Environment {
    
    static var baseURL: String {
        
        #if DEV
        return "https://dev.api.com"
        #else
        return "https://prod.api.com"
        #endif
    }
    
    static var appName: String {
        
        guard let name = Bundle.main.object(forInfoDictionaryKey: "AppName") as? String else {
            fatalError("AppName is not found in Info.plist")
        }
        return name
    }
}

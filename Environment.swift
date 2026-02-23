//
//  Environment.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 23/02/26.
//

import Foundation

enum Environment {
    
    static var baseURL: String {
        
        guard let url = Bundle.main.object(forInfoDictionaryKey: "BaseURL") as? String else {
            fatalError("BaseURL not set in Info.plist")
           
        }
        return url
    }
    
    static var appName: String {
        
        guard let name = Bundle.main.object(forInfoDictionaryKey: "AppName") as? String else {
            fatalError("AppName is not found in Info.plist")
        }
        return name
    }
}

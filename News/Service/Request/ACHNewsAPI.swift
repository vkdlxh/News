//
//  ACHNewsAPI.swift
//  News
//
//  Created by j.lee on 2020/02/17.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation

final class ACHNewsAPI {
    
    static let apiKey = "1cbc735ec5564a2a8890343f5d23bc61"
    
    struct InternationalNews : ACHNewsRequest {
        
        let country: String?
        
        typealias Response = NewsResponse<Article>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/v2/top-headlines"
        }
        
        var queryItems: [URLQueryItem] {
            return [
                URLQueryItem(name: "apiKey", value: apiKey),
                URLQueryItem(name: "country", value: country)]
        }
    }
    
    //TODO: Add request struct
//    struct XXXXRequest : ACHNewsRequest {
//
//        typealias Response = XXXResponse<>
//
//        var method: HTTPMethod {
//            return .get
//        }
//
//        var path: String {
//            return ""
//        }
//
//        var queryItems: [URLQueryItem] {
//            return [
//                URLQueryItem(name: "", value: ""),
//                URLQueryItem(name: "apiKey", value: apiKey)]
//        }
//    }
}

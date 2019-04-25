//
//  AppStoreService.swift
//  ANAppStore
//
//  Created by Adam C. Smith on 4/25/19.
//  Copyright © 2019 Adam C. Smith. All rights reserved.
//

import UIKit
import Alamofire

class AppStoreService {
    
    typealias APICallCompletion = (_ success: Bool, _ responseObject: Any?) -> Void

    static let shared = AppStoreService()
    
    func checkVersion(completionHandler: @escaping APICallCompletion) {
        
        let params: Parameters = [ "TODO:": "" ]
        
        let appStoreUrl = "/TODO"
        
        Alamofire.request(appStoreUrl,
                          method: .get,
                          parameters: params,
                          encoding: URLEncoding.default,
                          headers: nil)
            .validate()
            .responseJSON { response in
                
                switch response.result {
                case .success(let value):
                    // TODO:
                    completionHandler(true, value)
                case .failure(let error):
                    print("Error during checkVersion.")
                    completionHandler(false, response.response?.statusCode)
                }
        }
    }
}

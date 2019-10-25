//
//  AwesomeAPIClient.swift
//  AwesomeApi
//
//  Created by Fábio Salata on 25/10/19.
//  Copyright © 2019 Fábio Salata. All rights reserved.
//

import Foundation
import Alamofire

public final class AwesomeAPIClient {
    public static let shared = AwesomeAPIClient()
    
    public func testRun(completion: @escaping () -> ()) {
        print("Awesome API client up and running!! 🍕")
        
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print("Request: \(String(describing: response.request))") // Original URL request
            print("Response: \(String(describing: response.response))") // HTTP URL response
            print("Result: \(response.result)") // Response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // Serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // Original server data as UTF8 string
            }
            
            completion()
        }
    }
}

//
//  LocalService.swift
//  Sidemenuv1
//
//  Created by Shaik abdul mazeed on 08/04/21.
//

import UIKit

class LocalService: NSObject {
    
    //Creating an instance to the class make it as singelton class
    static let shared = LocalService()
    
    private override init() {
        super.init()
    }
    //Creating a function to fetch the data
    func dataParse<T:Codable>(resource name:String, extension exten:String, Completion: @escaping(T) -> Void){
        
        let url = Bundle.main.url(forResource: name, withExtension: exten)
        do{
            let jsonData = try Data(contentsOf: url!)
            print("GotData", jsonData)
            let myData = try JSONDecoder().decode(T.self, from: jsonData)
            Completion(myData)
                        
        }catch{
            print("Error in fetching the data")
        }
    }
}

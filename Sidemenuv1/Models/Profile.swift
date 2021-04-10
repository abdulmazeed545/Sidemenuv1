//
//  Profile.swift
//  Sidemenuv1
//
//  Created by Shaik abdul mazeed on 08/04/21.
//

import Foundation

struct Profile : Codable{
    
    var `default` : [Default]
    var login : [Login]
    var loginOptions : [LoginOptions]
    var defaultOptions :  [DefaultOptions]
    var languages : [Languages]
    var about : [About]
}
struct Default : Codable{
    var title:String
}
struct Login :Codable {
    var title:String
}
struct LoginOptions : Codable {
    var title:String
}
struct DefaultOptions: Codable {
    var title:String
}
struct Languages: Codable {
    var title: String
}
struct About : Codable {
    var title: String
}

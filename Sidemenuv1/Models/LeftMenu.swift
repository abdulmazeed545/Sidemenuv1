//
//  LeftMenu.swift
//  Sidemenuv1
//
//  Created by Shaik abdul mazeed on 09/04/21.
//

import Foundation

struct LeftMenu : Codable{
    
    var bottom : [String]
    var top : Top
    var data : MyData
}
struct Top :Codable {
    var Library: [String]
    var Mailbox: [String]
    var Connect: [String]
    var Resources: [String]
}
struct MyData :Codable {
    var Content : [Content]
    var Imports: [String]
    var Exports: [String]
    var Contacts: [Contacts]
    var Media: [Media]
    
}
struct Content : Codable {
    var title: String
    var level: Int
}
struct Contacts : Codable {
    var name: String
    var email: String
}
struct Media : Codable {
    var name: String
}

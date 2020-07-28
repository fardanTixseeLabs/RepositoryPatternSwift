//
//  JsonModel.swift
//  RepositoryPattern
//
//  Created by Fardan Akhter on 7/28/20.
//  Copyright © 2020 Fardan. All rights reserved.
//

import Foundation

//Codable Model

//To parse sample json 01
struct UserSampleModel01: Decodable{
    var response: Response
}
struct Response: Decodable{
    var id: String
    var firstname: String
    var lastname: String
}

//To parse sample json 02
struct UserSampleModel02: Decodable{
    var auth: Auth
    var user_info: UserInfo
}

struct Auth: Decodable{
    var id: String
}

struct UserInfo: Decodable{
    var firstname: String
    var lastname: String
}

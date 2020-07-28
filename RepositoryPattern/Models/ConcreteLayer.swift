//
//  ConcreteLayer.swift
//  RepositoryPattern
//
//  Created by Fardan Akhter on 7/28/20.
//  Copyright © 2020 Fardan. All rights reserved.
//

import Foundation

//CONCRETE LAYER//

/**
 This model is to be used by client classes for presenting to Views
 Modification is not required here by any change in json response from network
 */

struct User: RepositoryData{
    var id: String
    var firstname: String
    var lastname: String
    
    init() {
        self.id = ""
        self.firstname = ""
        self.lastname = ""
    }
}

//Implementation Repository for CRUD operations on presentable RepositoryData model to client classes

///Example 01 - sample json - 01
class UserJson1Repository: Repository{
    
    func getData(completion: @escaping (RepositoryData) -> Void) {
        //Network call....
        let data = SampleJson_01.data(using: .utf8)!
        let decoder = JSONDecoder()
        
        if let modelData = try? decoder.decode(UserSampleModel01.self, from: data){
            var user = User()
            user.id = modelData.response.id
            user.firstname = modelData.response.firstname
            user.lastname = modelData.response.lastname
            completion(user)
        }
    }
    
    func postData(_: [RepositoryData]) {
    }
}

///Example 02 - sample json - 02
class UserJson2Repository: Repository{
    func getData(completion: @escaping (RepositoryData) -> Void) {
       //Network call....
        let data = SampleJson_02.data(using: .utf8)!
        let decoder = JSONDecoder()
        
        if let modelData = try? decoder.decode(UserSampleModel02.self, from: data){
            var user = User()
            user.id = modelData.auth.id
            user.firstname = modelData.user_info.firstname
            user.lastname = modelData.user_info.lastname
            completion(user)
        }
    }
    
    func postData(_: [RepositoryData]) {
    }
}


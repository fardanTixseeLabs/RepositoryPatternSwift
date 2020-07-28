//
//  RepositoryData.swift
//  RepositoryPattern
//
//  Created by Fardan Akhter on 7/28/20.
//  Copyright © 2020 Fardan. All rights reserved.
//

import Foundation

//REPOSITORY PATTERN//

//ABSTRACT LAYER//

/**
 The class that implements '' Repository '' protocol is responsinle for CRUD operations on data model subclassed by '' RepositoryData ''
 */
protocol Repository{
    
    //associatedtype T: RepositoryData
    //func getData() -> T
    //func postData(_: [T])
    
    func getData(completion: @escaping (RepositoryData) -> Void)
    func postData(_: [RepositoryData])
}

protocol RepositoryData{}

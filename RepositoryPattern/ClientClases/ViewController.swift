//
//  ViewController.swift
//  RepositoryPattern
//
//  Created by Fardan Akhter on 7/28/20.
//  Copyright © 2020 Fardan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Client Code
        var data: RepositoryData! // holds data to present in views
        var repository: Repository! // holds Repository child instance
        
        //From Sample Json 01
        repository = UserJson1Repository()
        repository.getData{ (user) in
            data = user
            print("\(String(describing: data.self))")
        }
        
        //From Sample Json 02
        repository = UserJson2Repository()
        repository.getData{ (user) in
            data = user
            print("\(String(describing: data.self))")
        }
    }
}

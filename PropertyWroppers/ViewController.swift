//
//  ViewController.swift
//  PropertyWroppers
//
//  Created by shiga on 20/01/20.
//  Copyright © 2020 shiga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var user = User(firstName: "suresh kumar", lastName:"shiga")
        print(user)
        
        user.lastName = "donthgaani"
        
        print(user)
        
        let document = Document()
        print(document.name)
    }
}





@propertyWrapper struct Capitalized {
    var wrappedValue:String {
        didSet { wrappedValue = wrappedValue.capitalized }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}


struct User {
    @Capitalized var firstName: String
    @Capitalized var lastName: String
}


struct Document {
    @Capitalized var name = "Untitled document"
}

//
//  Person.swift
//  Project-10-Names-to-Faces
//
//  Created by Raul Sulaimanov on 02.04.19.
//  Copyright © 2019 Raul Sulaimanov. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

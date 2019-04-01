//
//  Petition.swift
//  Project-7-Whitehouse-Petitions
//
//  Created by Raul Sulaimanov on 29.03.19.
//  Copyright © 2019 Raul Sulaimanov. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}

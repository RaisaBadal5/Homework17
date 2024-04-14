//
//  UserChoose.swift
//  WuwunApp
//
//  Created by Default on 14.04.24.
//

import UIKit

class UserChoose {

    var name: String?
    var description: String?
    var icon: UIImage?
    var id: Int = 0
    
    init(name: String?,description: String?,icon: UIImage?, id: Int) {
        self.name = name
        self.description = description
        self.icon = icon
        self.id = id
    }

}

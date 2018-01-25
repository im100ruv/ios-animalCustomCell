//
//  Animal.swift
//  AnimalCustomCell
//
//  Created by Im100ruv on 22/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class Animal {
    var name: String
    var image: UIImage
    var sound: String
    var size: String
    
    init(name: String, sound: String, size: String) {
        self.name = name
        image = UIImage(named: self.name)!
        self.sound = sound
        self.size = size
    }
    
}

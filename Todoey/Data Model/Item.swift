//
//  Item.swift
//  Todoey
//
//  Created by Tommy Öman on 2018-03-13.
//  Copyright © 2018 Tommy Öman. All rights reserved.
//

import Foundation

class Item: Codable {
    init(){
        title = ""
        done = false
    }
    init( t_ext: String, ch_ecked: Bool) {
        title = t_ext
        done = ch_ecked
    }
    
    var title: String
    var done: Bool
}

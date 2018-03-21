//
//  Data.swift
//  Todoey
//
//  Created by Tommy Öman on 2018-03-21.
//  Copyright © 2018 Tommy Öman. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}

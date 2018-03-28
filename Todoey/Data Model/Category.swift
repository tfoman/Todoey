//
//  Category.swift
//  Todoey
//
//  Created by Tommy Öman on 2018-03-21.
//  Copyright © 2018 Tommy Öman. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var bgColorHex: String = ""
    let items = List<Item>()
}

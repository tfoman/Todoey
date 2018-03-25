//
//  Item.swift
//  Todoey
//
//  Created by Tommy Öman on 2018-03-21.
//  Copyright © 2018 Tommy Öman. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var created: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}

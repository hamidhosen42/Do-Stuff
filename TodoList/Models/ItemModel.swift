//
//  ItemModel.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//

import Foundation

struct ItemModel : Identifiable {
    var id: String
    var title: String
    var isDone: Bool = false
    
    
    init(id: String = UUID().uuidString, title: String, isDone: Bool) {
        self.id = id
        self.title = title
        self.isDone = isDone
    }
    
    func update() -> ItemModel {
        ItemModel(id: id, title: title, isDone: !isDone)
    }
}

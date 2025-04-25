//
//  ItemModel.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//

import Foundation

struct ItemModel : Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var isDone: Bool = false
}

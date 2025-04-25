//
//  ListViewModel.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//


import Foundation


/*
 
 CRUD FUNCTIONS
 
 Create Read
 Read
 Update
 Delete
 
 */

class ListViewModel :ObservableObject{
    
    @Published var todoItems: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems(){
        let newItem = [
            ItemModel(title: "Buy milk", isDone: false),
            ItemModel(title: "Learn SwiftUI", isDone: true),
            ItemModel(title: "Go for a walk", isDone: false),
            ItemModel(title: "Read a book", isDone: false),
            ItemModel(title: "Write some code", isDone: true),
            ItemModel(title: "Cook dinner", isDone: false),
            ItemModel(title: "Exercise", isDone: true),
            ItemModel(title: "Meditate", isDone: false),
            ItemModel(title: "Call Mom", isDone: true),
            ItemModel(title: "Watch a tutorial", isDone: false),
            ItemModel(title: "Shop groceries", isDone: false),
            ItemModel(title: "Practice piano", isDone: true),
            ItemModel(title: "Clean house", isDone: false),
            ItemModel(title: "Water plants", isDone: false),
            ItemModel(title: "Finish homework", isDone: true),
            ItemModel(title: "Plan weekend trip", isDone: false),
            ItemModel(title: "Check emails", isDone: true),
            ItemModel(title: "Visit friend", isDone: false),
            ItemModel(title: "Organize desk", isDone: false),
            ItemModel(title: "Review notes", isDone: true)
        ]
        todoItems.append(contentsOf: newItem)
    }
    
    func deleteItems(at offsets: IndexSet) {
        todoItems.remove(atOffsets: offsets)
    }
    
    func moveItem(from: IndexSet,to : Int){
        todoItems.move(fromOffsets: from, toOffset:to)
    }
    
    func addItem(title: String){
        todoItems.append(ItemModel(title: title,isDone: false))
    }
    
    func updateItem(item: ItemModel) {
        if let index = todoItems.firstIndex(where: { $0.id == item.id }) {
            todoItems[index] = item.update()
        }
    }
}

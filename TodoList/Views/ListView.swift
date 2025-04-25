//
//  ListView.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//


import SwiftUI

struct ListView: View {
    
    @State var todoItems: [ItemModel] = [
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
    
    var body: some View {
        List{
            ForEach(todoItems){ todoItem in
                ListRowView(item: todoItem)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle(Text("Todo List 📝"))
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

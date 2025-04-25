//
//  ListView.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//


import SwiftUI

struct ListView: View {
    
    @State var todoItems: [String] = [
            "Buy milk",
            "Learn SwiftUI",
            "Go for a walk",
            "Read a book",
            "Write code",
            "Call Mom",
            "Clean the room",
            "Prepare dinner",
            "Practice guitar",
            "Meditate"
        ]
    
    var body: some View {
        List{
            ForEach(todoItems, id:\.self){ todoItem in
                ListRowView(title: todoItem)
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

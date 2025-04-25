//
//  ListView.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//


import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack{
            if listViewModel.todoItems.isEmpty{
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }else{
                List{
                    ForEach(listViewModel.todoItems){ todoItem in
                        ListRowView(item: todoItem)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: todoItem)
                                }
                            }
                    }
                    .onDelete(perform:listViewModel.deleteItems)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
                
            }
        }
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
        .environmentObject(ListViewModel())
    }
}

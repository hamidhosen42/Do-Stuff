//
//  ListRowView.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//

import SwiftUI

struct ListRowView: View {
    
    let item : ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isDone ? "checkmark.circle" : "circle")
                .foregroundColor(item.isDone ? .green : .red)
            
            Text(item.title)
            
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,2)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(item:  ItemModel(title: "Hamid Hosen",isDone: false))
    }
}

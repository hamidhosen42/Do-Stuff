//
//  AddView.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something to add...", text:$textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color(uiColor: .systemBlue))
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle(Text("Add an Item 🖊️"))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}

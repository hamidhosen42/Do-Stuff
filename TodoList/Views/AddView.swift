//
//  AddView.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle : String = " "
    @State var showAlert : Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something to add...", text:$textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: saveButtonTapped, label: {
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
        .alert(isPresented:$showAlert,content: getAlert)
    }
    
    func saveButtonTapped(){
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if(textFieldText.count<3){
            alertTitle = "The Text Must Be At Least 3 Characters Long ❤️"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert{
        Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}

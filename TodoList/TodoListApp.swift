//
//  TodoListApp.swift
//  TodoList
//
//  Created by Md.Hamid Hosen on 25/4/25.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - Data Point
 View - UI
 ViewModel - Manges Model for view
 
 */


@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}

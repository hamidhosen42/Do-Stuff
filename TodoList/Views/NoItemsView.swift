//
//  NoItemsView.swift
//  TodoList
//
//  Created by Sharful Alam on 25/4/25.
//



import SwiftUI

struct NoItemsView: View {
    
    @State var animation: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                
                
                Text("No items to show")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Are You a productive person? Add some tasks to your list!")
                    .padding(.bottom,20)
                
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add Something 😒")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(animation ? Color.red:Color.accentColor)
                            .cornerRadius(10)
                    }
                )
                .padding(.horizontal,animation ? 30 : 50)
                .shadow(
                    color: animation ? Color.red.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animation ? 30 : 10,
                    x : 0,
                    y: animation ? 50 : 30
                )
                .scaleEffect(animation ? 1.1 : 1.0)
                .offset(y:animation ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation(){
        guard !animation else { return }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ){
                animation.toggle()
            }
        }
    }
}

struct NoItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
        }
    }
}

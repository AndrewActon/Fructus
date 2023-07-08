//
//  ContentView.swift
//  Fructus
//
//  Created by Andrew Acton on 7/2/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }//: Loop
            }//: List
            .navigationTitle("Fruits")
        }//: NavigationView
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

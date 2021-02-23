//
//  ContentView.swift
//  Recipe App
//
//  Created by Adam Woods on 16/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                ForEach (model.pizzas) { pizza in
                    
                    // Use our new view
                    PizzaView(pizza: pizza)
                    
                }
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

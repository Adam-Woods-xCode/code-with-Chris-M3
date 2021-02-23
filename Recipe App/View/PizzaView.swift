//
//  PizzaView.swift
//  Recipe App
//
//  Created by Adam Woods on 19/02/2021.
//

import SwiftUI

struct PizzaView: View {
    
    var pizza:Pizza
    
    var body: some View {
        
        HStack {
            Image(pizza.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .cornerRadius(5)
                .clipped()
                
            
            VStack(alignment: .leading) {
                Text(pizza.name)
                    .font(.headline)
                HStack {
                    ForEach (pizza.toppings, id:\.self) { topping in
                        Text(topping)
                    }
                }
                .font(.caption)
            }
        }
        
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        
        // We'll have to pass in a dummy pizza to the preview
        PizzaView(pizza: Pizza(id: UUID(), name: "Test", toppings: ["topping1", "toppping2"], image: "meatlovers"))
    }
}
